
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ m_resblks; scalar_t__ m_resblks_avail; scalar_t__ m_alloc_set_aside; int m_sb_lock; int m_fdblocks; } ;
typedef TYPE_1__ xfs_mount_t ;
struct TYPE_7__ {scalar_t__ resblks; scalar_t__ resblks_avail; } ;
typedef TYPE_2__ xfs_fsop_resblks_t ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ int64_t ;


 int EINVAL ;
 int ENOSPC ;
 scalar_t__ percpu_counter_sum (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int xfs_mod_fdblocks (TYPE_1__*,scalar_t__,int ) ;

int
xfs_reserve_blocks(
 xfs_mount_t *mp,
 uint64_t *inval,
 xfs_fsop_resblks_t *outval)
{
 int64_t lcounter, delta;
 int64_t fdblks_delta = 0;
 uint64_t request;
 int64_t free;
 int error = 0;


 if (inval == (uint64_t *)((void*)0)) {
  if (!outval)
   return -EINVAL;
  outval->resblks = mp->m_resblks;
  outval->resblks_avail = mp->m_resblks_avail;
  return 0;
 }

 request = *inval;
 spin_lock(&mp->m_sb_lock);







 if (mp->m_resblks > request) {
  lcounter = mp->m_resblks_avail - request;
  if (lcounter > 0) {
   fdblks_delta = lcounter;
   mp->m_resblks_avail -= lcounter;
  }
  mp->m_resblks = request;
  if (fdblks_delta) {
   spin_unlock(&mp->m_sb_lock);
   error = xfs_mod_fdblocks(mp, fdblks_delta, 0);
   spin_lock(&mp->m_sb_lock);
  }

  goto out;
 }






 error = -ENOSPC;
 do {
  free = percpu_counter_sum(&mp->m_fdblocks) -
      mp->m_alloc_set_aside;
  if (free <= 0)
   break;

  delta = request - mp->m_resblks;
  lcounter = free - delta;
  if (lcounter < 0)

   fdblks_delta = free;
  else
   fdblks_delta = delta;
  spin_unlock(&mp->m_sb_lock);
  error = xfs_mod_fdblocks(mp, -fdblks_delta, 0);
  spin_lock(&mp->m_sb_lock);
 } while (error == -ENOSPC);





 if (!error && fdblks_delta) {
  mp->m_resblks += fdblks_delta;
  mp->m_resblks_avail += fdblks_delta;
 }

out:
 if (outval) {
  outval->resblks = mp->m_resblks;
  outval->resblks_avail = mp->m_resblks_avail;
 }

 spin_unlock(&mp->m_sb_lock);
 return error;
}
