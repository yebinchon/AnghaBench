
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int atm_dev_mutex ;
 int mutex_unlock (int *) ;

void atm_dev_seq_stop(struct seq_file *seq, void *v)
{
 mutex_unlock(&atm_dev_mutex);
}
