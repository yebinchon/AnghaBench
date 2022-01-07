
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qc_info {int i_fieldmask; int i_rt_spc_warnlimit; int i_spc_warnlimit; int i_ino_warnlimit; int i_rt_spc_timelimit; int i_ino_timelimit; int i_spc_timelimit; } ;
struct fs_disk_quota {int d_fieldmask; int d_rtbwarns; int d_bwarns; int d_iwarns; int d_rtbtimer; int d_itimer; int d_btimer; } ;


 int FS_DQ_BTIMER ;
 int FS_DQ_BWARNS ;
 int FS_DQ_ITIMER ;
 int FS_DQ_IWARNS ;
 int FS_DQ_RTBTIMER ;
 int FS_DQ_RTBWARNS ;
 int QC_INO_TIMER ;
 int QC_INO_WARNS ;
 int QC_RT_SPC_TIMER ;
 int QC_RT_SPC_WARNS ;
 int QC_SPC_TIMER ;
 int QC_SPC_WARNS ;
 int memset (struct qc_info*,int ,int) ;

__attribute__((used)) static void copy_qcinfo_from_xfs_dqblk(struct qc_info *dst,
           struct fs_disk_quota *src)
{
 memset(dst, 0, sizeof(*dst));
 dst->i_spc_timelimit = src->d_btimer;
 dst->i_ino_timelimit = src->d_itimer;
 dst->i_rt_spc_timelimit = src->d_rtbtimer;
 dst->i_ino_warnlimit = src->d_iwarns;
 dst->i_spc_warnlimit = src->d_bwarns;
 dst->i_rt_spc_warnlimit = src->d_rtbwarns;
 if (src->d_fieldmask & FS_DQ_BWARNS)
  dst->i_fieldmask |= QC_SPC_WARNS;
 if (src->d_fieldmask & FS_DQ_IWARNS)
  dst->i_fieldmask |= QC_INO_WARNS;
 if (src->d_fieldmask & FS_DQ_RTBWARNS)
  dst->i_fieldmask |= QC_RT_SPC_WARNS;
 if (src->d_fieldmask & FS_DQ_BTIMER)
  dst->i_fieldmask |= QC_SPC_TIMER;
 if (src->d_fieldmask & FS_DQ_ITIMER)
  dst->i_fieldmask |= QC_INO_TIMER;
 if (src->d_fieldmask & FS_DQ_RTBTIMER)
  dst->i_fieldmask |= QC_RT_SPC_TIMER;
}
