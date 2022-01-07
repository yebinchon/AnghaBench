
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct buffer_head {int dummy; } ;
struct blk_plug {int dummy; } ;
struct TYPE_3__ {struct buffer_head** j_chkpt_bhs; } ;
typedef TYPE_1__ journal_t ;


 int BUFFER_TRACE (struct buffer_head*,char*) ;
 int REQ_SYNC ;
 int __brelse (struct buffer_head*) ;
 int blk_finish_plug (struct blk_plug*) ;
 int blk_start_plug (struct blk_plug*) ;
 int write_dirty_buffer (struct buffer_head*,int ) ;

__attribute__((used)) static void
__flush_batch(journal_t *journal, int *batch_count)
{
 int i;
 struct blk_plug plug;

 blk_start_plug(&plug);
 for (i = 0; i < *batch_count; i++)
  write_dirty_buffer(journal->j_chkpt_bhs[i], REQ_SYNC);
 blk_finish_plug(&plug);

 for (i = 0; i < *batch_count; i++) {
  struct buffer_head *bh = journal->j_chkpt_bhs[i];
  BUFFER_TRACE(bh, "brelse");
  __brelse(bh);
 }
 *batch_count = 0;
}
