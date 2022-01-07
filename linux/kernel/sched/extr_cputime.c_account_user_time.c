
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct task_struct {int utime; } ;


 int CPUTIME_NICE ;
 int CPUTIME_USER ;
 int account_group_user_time (struct task_struct*,int ) ;
 int acct_account_cputime (struct task_struct*) ;
 int task_group_account_field (struct task_struct*,int,int ) ;
 scalar_t__ task_nice (struct task_struct*) ;

void account_user_time(struct task_struct *p, u64 cputime)
{
 int index;


 p->utime += cputime;
 account_group_user_time(p, cputime);

 index = (task_nice(p) > 0) ? CPUTIME_NICE : CPUTIME_USER;


 task_group_account_field(p, index, cputime);


 acct_account_cputime(p);
}
