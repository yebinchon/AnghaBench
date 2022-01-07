
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qc_dqblk {int d_fieldmask; int d_rt_spc_warns; int d_rt_spc_timer; void* d_rt_space; void* d_rt_spc_softlimit; void* d_rt_spc_hardlimit; int d_spc_warns; int d_ino_warns; int d_spc_timer; int d_ino_timer; int d_ino_count; void* d_space; int d_ino_softlimit; int d_ino_hardlimit; void* d_spc_softlimit; void* d_spc_hardlimit; } ;
struct fs_disk_quota {int d_fieldmask; int d_rtbwarns; int d_rtbtimer; int d_rtbcount; int d_rtb_softlimit; int d_rtb_hardlimit; int d_bwarns; int d_iwarns; int d_btimer; int d_itimer; int d_icount; int d_bcount; int d_ino_softlimit; int d_ino_hardlimit; int d_blk_softlimit; int d_blk_hardlimit; } ;


 int FS_DQ_BCOUNT ;
 int FS_DQ_BHARD ;
 int FS_DQ_BSOFT ;
 int FS_DQ_BTIMER ;
 int FS_DQ_BWARNS ;
 int FS_DQ_ICOUNT ;
 int FS_DQ_IHARD ;
 int FS_DQ_ISOFT ;
 int FS_DQ_ITIMER ;
 int FS_DQ_IWARNS ;
 int FS_DQ_RTBCOUNT ;
 int FS_DQ_RTBHARD ;
 int FS_DQ_RTBSOFT ;
 int FS_DQ_RTBTIMER ;
 int FS_DQ_RTBWARNS ;
 int QC_INO_COUNT ;
 int QC_INO_HARD ;
 int QC_INO_SOFT ;
 int QC_INO_TIMER ;
 int QC_INO_WARNS ;
 int QC_RT_SPACE ;
 int QC_RT_SPC_HARD ;
 int QC_RT_SPC_SOFT ;
 int QC_RT_SPC_TIMER ;
 int QC_RT_SPC_WARNS ;
 int QC_SPACE ;
 int QC_SPC_HARD ;
 int QC_SPC_SOFT ;
 int QC_SPC_TIMER ;
 int QC_SPC_WARNS ;
 void* quota_bbtob (int ) ;

__attribute__((used)) static void copy_from_xfs_dqblk(struct qc_dqblk *dst, struct fs_disk_quota *src)
{
 dst->d_spc_hardlimit = quota_bbtob(src->d_blk_hardlimit);
 dst->d_spc_softlimit = quota_bbtob(src->d_blk_softlimit);
 dst->d_ino_hardlimit = src->d_ino_hardlimit;
 dst->d_ino_softlimit = src->d_ino_softlimit;
 dst->d_space = quota_bbtob(src->d_bcount);
 dst->d_ino_count = src->d_icount;
 dst->d_ino_timer = src->d_itimer;
 dst->d_spc_timer = src->d_btimer;
 dst->d_ino_warns = src->d_iwarns;
 dst->d_spc_warns = src->d_bwarns;
 dst->d_rt_spc_hardlimit = quota_bbtob(src->d_rtb_hardlimit);
 dst->d_rt_spc_softlimit = quota_bbtob(src->d_rtb_softlimit);
 dst->d_rt_space = quota_bbtob(src->d_rtbcount);
 dst->d_rt_spc_timer = src->d_rtbtimer;
 dst->d_rt_spc_warns = src->d_rtbwarns;
 dst->d_fieldmask = 0;
 if (src->d_fieldmask & FS_DQ_ISOFT)
  dst->d_fieldmask |= QC_INO_SOFT;
 if (src->d_fieldmask & FS_DQ_IHARD)
  dst->d_fieldmask |= QC_INO_HARD;
 if (src->d_fieldmask & FS_DQ_BSOFT)
  dst->d_fieldmask |= QC_SPC_SOFT;
 if (src->d_fieldmask & FS_DQ_BHARD)
  dst->d_fieldmask |= QC_SPC_HARD;
 if (src->d_fieldmask & FS_DQ_RTBSOFT)
  dst->d_fieldmask |= QC_RT_SPC_SOFT;
 if (src->d_fieldmask & FS_DQ_RTBHARD)
  dst->d_fieldmask |= QC_RT_SPC_HARD;
 if (src->d_fieldmask & FS_DQ_BTIMER)
  dst->d_fieldmask |= QC_SPC_TIMER;
 if (src->d_fieldmask & FS_DQ_ITIMER)
  dst->d_fieldmask |= QC_INO_TIMER;
 if (src->d_fieldmask & FS_DQ_RTBTIMER)
  dst->d_fieldmask |= QC_RT_SPC_TIMER;
 if (src->d_fieldmask & FS_DQ_BWARNS)
  dst->d_fieldmask |= QC_SPC_WARNS;
 if (src->d_fieldmask & FS_DQ_IWARNS)
  dst->d_fieldmask |= QC_INO_WARNS;
 if (src->d_fieldmask & FS_DQ_RTBWARNS)
  dst->d_fieldmask |= QC_RT_SPC_WARNS;
 if (src->d_fieldmask & FS_DQ_BCOUNT)
  dst->d_fieldmask |= QC_SPACE;
 if (src->d_fieldmask & FS_DQ_ICOUNT)
  dst->d_fieldmask |= QC_INO_COUNT;
 if (src->d_fieldmask & FS_DQ_RTBCOUNT)
  dst->d_fieldmask |= QC_RT_SPACE;
}
