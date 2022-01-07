
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int CPUACCT_STAT_NSTATS ;
 int __cpuacct_percpu_seq_show (struct seq_file*,int ) ;

__attribute__((used)) static int cpuacct_percpu_seq_show(struct seq_file *m, void *V)
{
 return __cpuacct_percpu_seq_show(m, CPUACCT_STAT_NSTATS);
}
