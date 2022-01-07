
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ulong ;
struct kernel_param {scalar_t__ arg; } ;


 scalar_t__ HZ ;
 int WRITE_ONCE (scalar_t__,scalar_t__) ;
 int adjust_jiffies_till_sched_qs () ;
 int kstrtoul (char const*,int ,scalar_t__*) ;

__attribute__((used)) static int param_set_next_fqs_jiffies(const char *val, const struct kernel_param *kp)
{
 ulong j;
 int ret = kstrtoul(val, 0, &j);

 if (!ret) {
  WRITE_ONCE(*(ulong *)kp->arg, (j > HZ) ? HZ : (j ?: 1));
  adjust_jiffies_till_sched_qs();
 }
 return ret;
}
