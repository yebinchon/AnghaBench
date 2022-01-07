
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int sb_imax_pct; int sb_dblocks; } ;
struct xfs_mount {int m_growlock; int m_generation; TYPE_1__ m_sb; } ;
struct xfs_growfs_data {int imaxpct; int newblocks; } ;
struct TYPE_4__ {scalar_t__ maxicount; } ;


 int CAP_SYS_ADMIN ;
 int EPERM ;
 int EWOULDBLOCK ;
 TYPE_2__* M_IGEO (struct xfs_mount*) ;
 scalar_t__ XFS_FSB_TO_INO (struct xfs_mount*,int) ;
 int capable (int ) ;
 int do_div (int,int) ;
 int mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 int xfs_growfs_data_private (struct xfs_mount*,struct xfs_growfs_data*) ;
 int xfs_growfs_imaxpct (struct xfs_mount*,int) ;
 int xfs_update_secondary_sbs (struct xfs_mount*) ;

int
xfs_growfs_data(
 struct xfs_mount *mp,
 struct xfs_growfs_data *in)
{
 int error = 0;

 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;
 if (!mutex_trylock(&mp->m_growlock))
  return -EWOULDBLOCK;


 if (in->imaxpct != mp->m_sb.sb_imax_pct) {
  error = xfs_growfs_imaxpct(mp, in->imaxpct);
  if (error)
   goto out_error;
 }

 if (in->newblocks != mp->m_sb.sb_dblocks) {
  error = xfs_growfs_data_private(mp, in);
  if (error)
   goto out_error;
 }


 if (mp->m_sb.sb_imax_pct) {
  uint64_t icount = mp->m_sb.sb_dblocks * mp->m_sb.sb_imax_pct;
  do_div(icount, 100);
  M_IGEO(mp)->maxicount = XFS_FSB_TO_INO(mp, icount);
 } else
  M_IGEO(mp)->maxicount = 0;


 error = xfs_update_secondary_sbs(mp);

out_error:





 mp->m_generation++;
 mutex_unlock(&mp->m_growlock);
 return error;
}
