
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct task_struct {int stime; } ;
typedef enum cpu_usage_stat { ____Placeholder_cpu_usage_stat } cpu_usage_stat ;


 int account_group_system_time (struct task_struct*,int ) ;
 int acct_account_cputime (struct task_struct*) ;
 int task_group_account_field (struct task_struct*,int,int ) ;

void account_system_index_time(struct task_struct *p,
          u64 cputime, enum cpu_usage_stat index)
{

 p->stime += cputime;
 account_group_system_time(p, cputime);


 task_group_account_field(p, index, cputime);


 acct_account_cputime(p);
}
