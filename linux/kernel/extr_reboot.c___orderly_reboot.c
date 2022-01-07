
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emergency_sync () ;
 int kernel_restart (int *) ;
 int pr_warn (char*) ;
 int reboot_cmd ;
 int run_cmd (int ) ;

__attribute__((used)) static int __orderly_reboot(void)
{
 int ret;

 ret = run_cmd(reboot_cmd);

 if (ret) {
  pr_warn("Failed to start orderly reboot: forcing the issue\n");
  emergency_sync();
  kernel_restart(((void*)0));
 }

 return ret;
}
