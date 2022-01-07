
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef int loff_t ;


 int dyn_event_list ;
 void* seq_list_next (void*,int *,int *) ;

void *dyn_event_seq_next(struct seq_file *m, void *v, loff_t *pos)
{
 return seq_list_next(v, &dyn_event_list, pos);
}
