
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef int loff_t ;


 void* sched_debug_start (struct seq_file*,int *) ;

__attribute__((used)) static void *sched_debug_next(struct seq_file *file, void *data, loff_t *offset)
{
 (*offset)++;
 return sched_debug_start(file, offset);
}
