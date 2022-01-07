
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int nr_irqs ;
 int num_online_cpus () ;
 int show_stat ;
 int single_open_size (struct file*,int ,int *,unsigned int) ;

__attribute__((used)) static int stat_open(struct inode *inode, struct file *file)
{
 unsigned int size = 1024 + 128 * num_online_cpus();


 size += 2 * nr_irqs;
 return single_open_size(file, show_stat, ((void*)0), size);
}
