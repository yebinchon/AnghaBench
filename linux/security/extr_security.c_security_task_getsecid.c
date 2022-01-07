
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct task_struct {int dummy; } ;


 int call_void_hook (int ,struct task_struct*,scalar_t__*) ;
 int task_getsecid ;

void security_task_getsecid(struct task_struct *p, u32 *secid)
{
 *secid = 0;
 call_void_hook(task_getsecid, p, secid);
}
