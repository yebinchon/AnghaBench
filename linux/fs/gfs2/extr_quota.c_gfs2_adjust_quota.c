
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct qc_dqblk {int d_fieldmask; int d_spc_softlimit; int d_spc_hardlimit; int d_space; } ;
struct inode {scalar_t__ i_size; int i_atime; int i_mtime; } ;
struct TYPE_3__ {int sb_bsize_shift; } ;
struct gfs2_sbd {TYPE_1__ sd_sb; } ;
struct TYPE_4__ {void* qb_value; void* qb_limit; void* qb_warn; } ;
struct gfs2_quota_data {int qd_flags; TYPE_2__ qd_qb; } ;
struct gfs2_quota {void* qu_value; void* qu_limit; void* qu_warn; } ;
struct gfs2_inode {struct inode i_inode; } ;
typedef scalar_t__ s64 ;
typedef int q ;
typedef int loff_t ;


 int EIO ;
 struct gfs2_sbd* GFS2_SB (struct inode*) ;
 int QC_SPACE ;
 int QC_SPC_HARD ;
 int QC_SPC_SOFT ;
 int QDF_REFRESH ;
 int be64_add_cpu (void**,scalar_t__) ;
 scalar_t__ be64_to_cpu (void*) ;
 void* cpu_to_be64 (int) ;
 int current_time (struct inode*) ;
 int gfs2_internal_read (struct gfs2_inode*,char*,int*,int) ;
 scalar_t__ gfs2_is_stuffed (struct gfs2_inode*) ;
 int gfs2_unstuff_dinode (struct gfs2_inode*,int *) ;
 int gfs2_write_disk_quota (struct gfs2_inode*,struct gfs2_quota*,int) ;
 int i_size_write (struct inode*,scalar_t__) ;
 int mark_inode_dirty (struct inode*) ;
 int memset (struct gfs2_quota*,int ,int) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int gfs2_adjust_quota(struct gfs2_inode *ip, loff_t loc,
        s64 change, struct gfs2_quota_data *qd,
        struct qc_dqblk *fdq)
{
 struct inode *inode = &ip->i_inode;
 struct gfs2_sbd *sdp = GFS2_SB(inode);
 struct gfs2_quota q;
 int err;
 u64 size;

 if (gfs2_is_stuffed(ip)) {
  err = gfs2_unstuff_dinode(ip, ((void*)0));
  if (err)
   return err;
 }

 memset(&q, 0, sizeof(struct gfs2_quota));
 err = gfs2_internal_read(ip, (char *)&q, &loc, sizeof(q));
 if (err < 0)
  return err;

 loc -= sizeof(q);
 err = -EIO;
 be64_add_cpu(&q.qu_value, change);
 if (((s64)be64_to_cpu(q.qu_value)) < 0)
  q.qu_value = 0;
 qd->qd_qb.qb_value = q.qu_value;
 if (fdq) {
  if (fdq->d_fieldmask & QC_SPC_SOFT) {
   q.qu_warn = cpu_to_be64(fdq->d_spc_softlimit >> sdp->sd_sb.sb_bsize_shift);
   qd->qd_qb.qb_warn = q.qu_warn;
  }
  if (fdq->d_fieldmask & QC_SPC_HARD) {
   q.qu_limit = cpu_to_be64(fdq->d_spc_hardlimit >> sdp->sd_sb.sb_bsize_shift);
   qd->qd_qb.qb_limit = q.qu_limit;
  }
  if (fdq->d_fieldmask & QC_SPACE) {
   q.qu_value = cpu_to_be64(fdq->d_space >> sdp->sd_sb.sb_bsize_shift);
   qd->qd_qb.qb_value = q.qu_value;
  }
 }

 err = gfs2_write_disk_quota(ip, &q, loc);
 if (!err) {
  size = loc + sizeof(struct gfs2_quota);
  if (size > inode->i_size)
   i_size_write(inode, size);
  inode->i_mtime = inode->i_atime = current_time(inode);
  mark_inode_dirty(inode);
  set_bit(QDF_REFRESH, &qd->qd_flags);
 }

 return err;
}
