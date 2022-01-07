
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_triggers {int ot_offset; } ;
struct jbd2_buffer_trigger_type {int dummy; } ;
struct buffer_head {int dummy; } ;


 int ocfs2_block_check_compute (void*,size_t,void*) ;
 struct ocfs2_triggers* to_ocfs2_trigger (struct jbd2_buffer_trigger_type*) ;

__attribute__((used)) static void ocfs2_frozen_trigger(struct jbd2_buffer_trigger_type *triggers,
     struct buffer_head *bh,
     void *data, size_t size)
{
 struct ocfs2_triggers *ot = to_ocfs2_trigger(triggers);







 ocfs2_block_check_compute(data, size, data + ot->ot_offset);
}
