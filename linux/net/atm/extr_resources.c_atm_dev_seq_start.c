
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef int loff_t ;


 int atm_dev_mutex ;
 int atm_devs ;
 int mutex_lock (int *) ;
 void* seq_list_start_head (int *,int ) ;

void *atm_dev_seq_start(struct seq_file *seq, loff_t *pos)
{
 mutex_lock(&atm_dev_mutex);
 return seq_list_start_head(&atm_devs, *pos);
}
