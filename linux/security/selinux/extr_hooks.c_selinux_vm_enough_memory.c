
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;


 int CAP_OPT_NOAUDIT ;
 int CAP_SYS_ADMIN ;
 int cred_has_capability (int ,int ,int ,int) ;
 int current_cred () ;

__attribute__((used)) static int selinux_vm_enough_memory(struct mm_struct *mm, long pages)
{
 int rc, cap_sys_admin = 0;

 rc = cred_has_capability(current_cred(), CAP_SYS_ADMIN,
     CAP_OPT_NOAUDIT, 1);
 if (rc == 0)
  cap_sys_admin = 1;

 return cap_sys_admin;
}
