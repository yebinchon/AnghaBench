
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct journal_head {struct jbd2_buffer_trigger_type* b_triggers; } ;
struct jbd2_buffer_trigger_type {int dummy; } ;
struct buffer_head {int dummy; } ;


 scalar_t__ WARN_ON (int) ;
 struct journal_head* jbd2_journal_grab_journal_head (struct buffer_head*) ;
 int jbd2_journal_put_journal_head (struct journal_head*) ;

void jbd2_journal_set_triggers(struct buffer_head *bh,
          struct jbd2_buffer_trigger_type *type)
{
 struct journal_head *jh = jbd2_journal_grab_journal_head(bh);

 if (WARN_ON(!jh))
  return;
 jh->b_triggers = type;
 jbd2_journal_put_journal_head(jh);
}
