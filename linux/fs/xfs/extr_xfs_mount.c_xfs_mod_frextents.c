
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sb_frextents; } ;
struct xfs_mount {int m_sb_lock; TYPE_1__ m_sb; } ;
typedef scalar_t__ int64_t ;


 int ENOSPC ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int
xfs_mod_frextents(
 struct xfs_mount *mp,
 int64_t delta)
{
 int64_t lcounter;
 int ret = 0;

 spin_lock(&mp->m_sb_lock);
 lcounter = mp->m_sb.sb_frextents + delta;
 if (lcounter < 0)
  ret = -ENOSPC;
 else
  mp->m_sb.sb_frextents = lcounter;
 spin_unlock(&mp->m_sb_lock);
 return ret;
}
