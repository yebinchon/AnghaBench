
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint ;
struct xfs_scrub {int tp; TYPE_2__* mp; } ;
struct TYPE_3__ {int sb_qflags; } ;
struct TYPE_4__ {int m_qflags; int m_sb_lock; TYPE_1__ m_sb; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int xfs_log_sb (int ) ;
 int xfs_quota_chkd_flag (int) ;

void
xrep_force_quotacheck(
 struct xfs_scrub *sc,
 uint dqtype)
{
 uint flag;

 flag = xfs_quota_chkd_flag(dqtype);
 if (!(flag & sc->mp->m_qflags))
  return;

 sc->mp->m_qflags &= ~flag;
 spin_lock(&sc->mp->m_sb_lock);
 sc->mp->m_sb.sb_qflags &= ~flag;
 spin_unlock(&sc->mp->m_sb_lock);
 xfs_log_sb(sc->tp);
}
