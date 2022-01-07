
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;


 int clear_buffer_dirty (struct buffer_head*) ;
 int clear_buffer_journal_test (struct buffer_head*) ;

__attribute__((used)) static int reiserfs_clean_and_file_buffer(struct buffer_head *bh)
{
 if (bh) {
  clear_buffer_dirty(bh);
  clear_buffer_journal_test(bh);
 }
 return 0;
}
