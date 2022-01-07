
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_trans_res {int tr_logcount; int tr_logres; int member_0; } ;
struct TYPE_2__ {int sb_logsunit; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;


 int BBSIZE ;
 int BTOBB (int) ;
 int XFS_BB_TO_FSB (struct xfs_mount*,int) ;
 int XFS_MIN_LOG_FACTOR ;
 int roundup_64 (int,int) ;
 int xfs_log_calc_unit_res (struct xfs_mount*,int ) ;
 int xfs_log_get_max_trans_res (struct xfs_mount*,struct xfs_trans_res*) ;
 scalar_t__ xfs_sb_version_haslogv2 (TYPE_1__*) ;

int
xfs_log_calc_minimum_size(
 struct xfs_mount *mp)
{
 struct xfs_trans_res tres = {0};
 int max_logres;
 int min_logblks = 0;
 int lsunit = 0;

 xfs_log_get_max_trans_res(mp, &tres);

 max_logres = xfs_log_calc_unit_res(mp, tres.tr_logres);
 if (tres.tr_logcount > 1)
  max_logres *= tres.tr_logcount;

 if (xfs_sb_version_haslogv2(&mp->m_sb) && mp->m_sb.sb_logsunit > 1)
  lsunit = BTOBB(mp->m_sb.sb_logsunit);
 if (lsunit) {
  min_logblks = roundup_64(BTOBB(max_logres), lsunit) +
         2 * lsunit;
 } else
  min_logblks = BTOBB(max_logres) + 2 * BBSIZE;
 min_logblks *= XFS_MIN_LOG_FACTOR;

 return XFS_BB_TO_FSB(mp, min_logblks);
}
