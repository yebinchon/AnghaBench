
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef int loff_t ;


 void* cache_seq_next (struct seq_file*,void*,int *) ;

void *cache_seq_next_rcu(struct seq_file *file, void *p, loff_t *pos)
{
 return cache_seq_next(file, p, pos);
}
