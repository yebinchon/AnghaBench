
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orangefs_kernel_op_s {scalar_t__ tag; } ;


 int next_tag_value ;
 int next_tag_value_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void orangefs_new_tag(struct orangefs_kernel_op_s *op)
{
 spin_lock(&next_tag_value_lock);
 op->tag = next_tag_value++;
 if (next_tag_value == 0)
  next_tag_value = 100;
 spin_unlock(&next_tag_value_lock);
}
