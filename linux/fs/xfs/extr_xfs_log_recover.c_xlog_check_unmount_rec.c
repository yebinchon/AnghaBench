
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ xfs_daddr_t ;
struct xlog_rec_header {int h_num_logops; int h_len; int h_version; int h_size; } ;
struct xlog_op_header {int oh_flags; } ;
struct xlog {int l_curr_cycle; int l_last_sync_lsn; int l_tail_lsn; TYPE_1__* l_mp; } ;
struct TYPE_2__ {int m_sb; } ;


 scalar_t__ BTOBB (int) ;
 int XLOG_HEADER_CYCLE_SIZE ;
 int XLOG_UNMOUNT_TRANS ;
 int XLOG_VERSION_2 ;
 int be32_to_cpu (int ) ;
 scalar_t__ xfs_sb_version_haslogv2 (int *) ;
 int xlog_assign_atomic_lsn (int *,int ,scalar_t__) ;
 int xlog_bread (struct xlog*,scalar_t__,int,char*,char**) ;
 scalar_t__ xlog_wrap_logbno (struct xlog*,scalar_t__) ;

__attribute__((used)) static int
xlog_check_unmount_rec(
 struct xlog *log,
 xfs_daddr_t *head_blk,
 xfs_daddr_t *tail_blk,
 struct xlog_rec_header *rhead,
 xfs_daddr_t rhead_blk,
 char *buffer,
 bool *clean)
{
 struct xlog_op_header *op_head;
 xfs_daddr_t umount_data_blk;
 xfs_daddr_t after_umount_blk;
 int hblks;
 int error;
 char *offset;

 *clean = 0;
 if (xfs_sb_version_haslogv2(&log->l_mp->m_sb)) {
  int h_size = be32_to_cpu(rhead->h_size);
  int h_version = be32_to_cpu(rhead->h_version);

  if ((h_version & XLOG_VERSION_2) &&
      (h_size > XLOG_HEADER_CYCLE_SIZE)) {
   hblks = h_size / XLOG_HEADER_CYCLE_SIZE;
   if (h_size % XLOG_HEADER_CYCLE_SIZE)
    hblks++;
  } else {
   hblks = 1;
  }
 } else {
  hblks = 1;
 }

 after_umount_blk = xlog_wrap_logbno(log,
   rhead_blk + hblks + BTOBB(be32_to_cpu(rhead->h_len)));

 if (*head_blk == after_umount_blk &&
     be32_to_cpu(rhead->h_num_logops) == 1) {
  umount_data_blk = xlog_wrap_logbno(log, rhead_blk + hblks);
  error = xlog_bread(log, umount_data_blk, 1, buffer, &offset);
  if (error)
   return error;

  op_head = (struct xlog_op_header *)offset;
  if (op_head->oh_flags & XLOG_UNMOUNT_TRANS) {





   xlog_assign_atomic_lsn(&log->l_tail_lsn,
     log->l_curr_cycle, after_umount_blk);
   xlog_assign_atomic_lsn(&log->l_last_sync_lsn,
     log->l_curr_cycle, after_umount_blk);
   *tail_blk = after_umount_blk;

   *clean = 1;
  }
 }

 return 0;
}
