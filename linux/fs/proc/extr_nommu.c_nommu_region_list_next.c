
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct rb_node {int dummy; } ;
typedef int loff_t ;


 void* rb_next (struct rb_node*) ;

__attribute__((used)) static void *nommu_region_list_next(struct seq_file *m, void *v, loff_t *pos)
{
 (*pos)++;
 return rb_next((struct rb_node *) v);
}
