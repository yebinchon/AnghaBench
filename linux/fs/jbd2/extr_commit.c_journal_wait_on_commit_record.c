
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;
typedef int journal_t ;


 int EIO ;
 int buffer_uptodate (struct buffer_head*) ;
 int clear_buffer_dirty (struct buffer_head*) ;
 int put_bh (struct buffer_head*) ;
 scalar_t__ unlikely (int) ;
 int wait_on_buffer (struct buffer_head*) ;

__attribute__((used)) static int journal_wait_on_commit_record(journal_t *journal,
      struct buffer_head *bh)
{
 int ret = 0;

 clear_buffer_dirty(bh);
 wait_on_buffer(bh);

 if (unlikely(!buffer_uptodate(bh)))
  ret = -EIO;
 put_bh(bh);

 return ret;
}
