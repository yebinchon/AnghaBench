
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef int loff_t ;


 int dyn_event_list ;
 int event_mutex ;
 int mutex_lock (int *) ;
 void* seq_list_start (int *,int ) ;

void *dyn_event_seq_start(struct seq_file *m, loff_t *pos)
{
 mutex_lock(&event_mutex);
 return seq_list_start(&dyn_event_list, *pos);
}
