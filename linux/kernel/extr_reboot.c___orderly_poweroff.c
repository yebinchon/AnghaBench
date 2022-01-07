
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emergency_sync () ;
 int kernel_power_off () ;
 int poweroff_cmd ;
 int pr_warn (char*) ;
 int run_cmd (int ) ;

__attribute__((used)) static int __orderly_poweroff(bool force)
{
 int ret;

 ret = run_cmd(poweroff_cmd);

 if (ret && force) {
  pr_warn("Failed to start orderly shutdown: forcing the issue\n");






  emergency_sync();
  kernel_power_off();
 }

 return ret;
}
