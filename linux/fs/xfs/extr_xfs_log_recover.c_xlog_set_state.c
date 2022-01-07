
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ xfs_daddr_t ;
struct xlog_rec_header {int h_lsn; int h_tail_lsn; int h_cycle; } ;
struct TYPE_4__ {int grant; } ;
struct TYPE_3__ {int grant; } ;
struct xlog {int l_curr_block; int l_curr_cycle; TYPE_2__ l_write_head; TYPE_1__ l_reserve_head; int l_last_sync_lsn; int l_tail_lsn; scalar_t__ l_prev_block; } ;


 int BBTOB (int) ;
 int atomic64_set (int *,int ) ;
 int be32_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 int xlog_assign_grant_head (int *,int ,int ) ;

__attribute__((used)) static void
xlog_set_state(
 struct xlog *log,
 xfs_daddr_t head_blk,
 struct xlog_rec_header *rhead,
 xfs_daddr_t rhead_blk,
 bool bump_cycle)
{
 log->l_prev_block = rhead_blk;
 log->l_curr_block = (int)head_blk;
 log->l_curr_cycle = be32_to_cpu(rhead->h_cycle);
 if (bump_cycle)
  log->l_curr_cycle++;
 atomic64_set(&log->l_tail_lsn, be64_to_cpu(rhead->h_tail_lsn));
 atomic64_set(&log->l_last_sync_lsn, be64_to_cpu(rhead->h_lsn));
 xlog_assign_grant_head(&log->l_reserve_head.grant, log->l_curr_cycle,
     BBTOB(log->l_curr_block));
 xlog_assign_grant_head(&log->l_write_head.grant, log->l_curr_cycle,
     BBTOB(log->l_curr_block));
}
