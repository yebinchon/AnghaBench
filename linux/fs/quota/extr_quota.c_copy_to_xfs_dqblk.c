
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qc_dqblk {int d_rt_spc_warns; int d_rt_spc_timer; int d_rt_space; int d_rt_spc_softlimit; int d_rt_spc_hardlimit; int d_spc_warns; int d_ino_warns; int d_spc_timer; int d_ino_timer; int d_ino_count; int d_space; int d_ino_softlimit; int d_ino_hardlimit; int d_spc_softlimit; int d_spc_hardlimit; } ;
struct fs_disk_quota {int d_rtbwarns; int d_rtbtimer; void* d_rtbcount; void* d_rtb_softlimit; void* d_rtb_hardlimit; int d_bwarns; int d_iwarns; int d_btimer; int d_itimer; int d_icount; void* d_bcount; int d_ino_softlimit; int d_ino_hardlimit; void* d_blk_softlimit; void* d_blk_hardlimit; int d_flags; int d_id; int d_version; } ;
typedef int qid_t ;


 int FS_DQUOT_VERSION ;
 int FS_GROUP_QUOTA ;
 int FS_PROJ_QUOTA ;
 int FS_USER_QUOTA ;
 int PRJQUOTA ;
 int USRQUOTA ;
 int memset (struct fs_disk_quota*,int ,int) ;
 void* quota_btobb (int ) ;

__attribute__((used)) static void copy_to_xfs_dqblk(struct fs_disk_quota *dst, struct qc_dqblk *src,
         int type, qid_t id)
{
 memset(dst, 0, sizeof(*dst));
 dst->d_version = FS_DQUOT_VERSION;
 dst->d_id = id;
 if (type == USRQUOTA)
  dst->d_flags = FS_USER_QUOTA;
 else if (type == PRJQUOTA)
  dst->d_flags = FS_PROJ_QUOTA;
 else
  dst->d_flags = FS_GROUP_QUOTA;
 dst->d_blk_hardlimit = quota_btobb(src->d_spc_hardlimit);
 dst->d_blk_softlimit = quota_btobb(src->d_spc_softlimit);
 dst->d_ino_hardlimit = src->d_ino_hardlimit;
 dst->d_ino_softlimit = src->d_ino_softlimit;
 dst->d_bcount = quota_btobb(src->d_space);
 dst->d_icount = src->d_ino_count;
 dst->d_itimer = src->d_ino_timer;
 dst->d_btimer = src->d_spc_timer;
 dst->d_iwarns = src->d_ino_warns;
 dst->d_bwarns = src->d_spc_warns;
 dst->d_rtb_hardlimit = quota_btobb(src->d_rt_spc_hardlimit);
 dst->d_rtb_softlimit = quota_btobb(src->d_rt_spc_softlimit);
 dst->d_rtbcount = quota_btobb(src->d_rt_space);
 dst->d_rtbtimer = src->d_rt_spc_timer;
 dst->d_rtbwarns = src->d_rt_spc_warns;
}
