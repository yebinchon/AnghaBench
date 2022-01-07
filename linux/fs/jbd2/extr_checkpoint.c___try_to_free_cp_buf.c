
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct journal_head {int * b_transaction; } ;
struct buffer_head {int dummy; } ;


 int JBUFFER_TRACE (struct journal_head*,char*) ;
 int __jbd2_journal_remove_checkpoint (struct journal_head*) ;
 int buffer_dirty (struct buffer_head*) ;
 int buffer_locked (struct buffer_head*) ;
 int buffer_write_io_error (struct buffer_head*) ;
 struct buffer_head* jh2bh (struct journal_head*) ;

__attribute__((used)) static int __try_to_free_cp_buf(struct journal_head *jh)
{
 int ret = 0;
 struct buffer_head *bh = jh2bh(jh);

 if (jh->b_transaction == ((void*)0) && !buffer_locked(bh) &&
     !buffer_dirty(bh) && !buffer_write_io_error(bh)) {
  JBUFFER_TRACE(jh, "remove from checkpoint list");
  ret = __jbd2_journal_remove_checkpoint(jh) + 1;
 }
 return ret;
}
