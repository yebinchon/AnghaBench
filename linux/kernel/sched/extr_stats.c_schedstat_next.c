
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef int loff_t ;


 void* schedstat_start (struct seq_file*,int *) ;

__attribute__((used)) static void *schedstat_next(struct seq_file *file, void *data, loff_t *offset)
{
 (*offset)++;

 return schedstat_start(file, offset);
}
