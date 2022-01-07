
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct journal_head {int dummy; } ;
struct jbd2_buffer_trigger_type {int (* t_frozen ) (struct jbd2_buffer_trigger_type*,struct buffer_head*,void*,int ) ;} ;
struct buffer_head {int b_size; } ;


 struct buffer_head* jh2bh (struct journal_head*) ;
 int stub1 (struct jbd2_buffer_trigger_type*,struct buffer_head*,void*,int ) ;

void jbd2_buffer_frozen_trigger(struct journal_head *jh, void *mapped_data,
    struct jbd2_buffer_trigger_type *triggers)
{
 struct buffer_head *bh = jh2bh(jh);

 if (!triggers || !triggers->t_frozen)
  return;

 triggers->t_frozen(triggers, bh, mapped_data, bh->b_size);
}
