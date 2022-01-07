
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;


 int clear_buffer_journal_prepared (struct buffer_head*) ;
 int clear_buffer_journal_restore_dirty (struct buffer_head*) ;

__attribute__((used)) static void clear_prepared_bits(struct buffer_head *bh)
{
 clear_buffer_journal_prepared(bh);
 clear_buffer_journal_restore_dirty(bh);
}
