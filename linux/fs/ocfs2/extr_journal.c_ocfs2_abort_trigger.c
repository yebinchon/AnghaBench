
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jbd2_buffer_trigger_type {int dummy; } ;
struct buffer_head {TYPE_1__* b_bdev; scalar_t__ b_blocknr; } ;
struct TYPE_2__ {int bd_super; } ;


 int ML_ERROR ;
 int mlog (int ,char*,unsigned long,unsigned long long) ;
 int ocfs2_error (int ,char*) ;

__attribute__((used)) static void ocfs2_abort_trigger(struct jbd2_buffer_trigger_type *triggers,
    struct buffer_head *bh)
{
 mlog(ML_ERROR,
      "ocfs2_abort_trigger called by JBD2.  bh = 0x%lx, "
      "bh->b_blocknr = %llu\n",
      (unsigned long)bh,
      (unsigned long long)bh->b_blocknr);

 ocfs2_error(bh->b_bdev->bd_super,
      "JBD2 has aborted our journal, ocfs2 cannot continue\n");
}
