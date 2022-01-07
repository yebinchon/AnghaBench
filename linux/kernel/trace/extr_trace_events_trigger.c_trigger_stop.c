
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int event_mutex ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void trigger_stop(struct seq_file *m, void *t)
{
 mutex_unlock(&event_mutex);
}
