
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef int loff_t ;


 int atm_devs ;
 void* seq_list_next (void*,int *,int *) ;

void *atm_dev_seq_next(struct seq_file *seq, void *v, loff_t *pos)
{
 return seq_list_next(v, &atm_devs, pos);
}
