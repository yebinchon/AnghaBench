
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ xfs_ino_t ;
struct xfs_quotainfo {int qi_rtbwarnlimit; int qi_iwarnlimit; int qi_bwarnlimit; int qi_rtbtimelimit; int qi_itimelimit; int qi_btimelimit; } ;
struct xfs_mount {struct xfs_quotainfo* m_quotainfo; } ;
struct TYPE_2__ {int di_nextents; int di_nblocks; } ;
struct xfs_inode {TYPE_1__ i_d; } ;
struct qc_type_state {int rt_spc_warnlimit; int ino_warnlimit; int spc_warnlimit; int rt_spc_timelimit; int ino_timelimit; int spc_timelimit; int nextents; int blocks; int flags; scalar_t__ ino; } ;


 scalar_t__ NULLFSINO ;
 int QCI_SYSFILE ;
 scalar_t__ xfs_iget (struct xfs_mount*,int *,scalar_t__,int ,int ,struct xfs_inode**) ;
 int xfs_irele (struct xfs_inode*) ;

__attribute__((used)) static void
xfs_qm_fill_state(
 struct qc_type_state *tstate,
 struct xfs_mount *mp,
 struct xfs_inode *ip,
 xfs_ino_t ino)
{
 struct xfs_quotainfo *q = mp->m_quotainfo;
 bool tempqip = 0;

 tstate->ino = ino;
 if (!ip && ino == NULLFSINO)
  return;
 if (!ip) {
  if (xfs_iget(mp, ((void*)0), ino, 0, 0, &ip))
   return;
  tempqip = 1;
 }
 tstate->flags |= QCI_SYSFILE;
 tstate->blocks = ip->i_d.di_nblocks;
 tstate->nextents = ip->i_d.di_nextents;
 tstate->spc_timelimit = q->qi_btimelimit;
 tstate->ino_timelimit = q->qi_itimelimit;
 tstate->rt_spc_timelimit = q->qi_rtbtimelimit;
 tstate->spc_warnlimit = q->qi_bwarnlimit;
 tstate->ino_warnlimit = q->qi_iwarnlimit;
 tstate->rt_spc_warnlimit = q->qi_rtbwarnlimit;
 if (tempqip)
  xfs_irele(ip);
}
