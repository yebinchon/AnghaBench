
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;


 int CAP_OPT_NOAUDIT ;
 int CAP_SYS_ADMIN ;
 scalar_t__ cap_capable (int ,int *,int ,int ) ;
 int current_cred () ;
 int init_user_ns ;

int cap_vm_enough_memory(struct mm_struct *mm, long pages)
{
 int cap_sys_admin = 0;

 if (cap_capable(current_cred(), &init_user_ns,
    CAP_SYS_ADMIN, CAP_OPT_NOAUDIT) == 0)
  cap_sys_admin = 1;

 return cap_sys_admin;
}
