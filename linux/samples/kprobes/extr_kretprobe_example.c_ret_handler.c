
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct my_data {int entry_stamp; } ;
struct kretprobe_instance {scalar_t__ data; } ;
typedef scalar_t__ s64 ;
typedef int ktime_t ;


 int func_name ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 scalar_t__ ktime_to_ns (int ) ;
 int pr_info (char*,int ,unsigned long,long long) ;
 unsigned long regs_return_value (struct pt_regs*) ;

__attribute__((used)) static int ret_handler(struct kretprobe_instance *ri, struct pt_regs *regs)
{
 unsigned long retval = regs_return_value(regs);
 struct my_data *data = (struct my_data *)ri->data;
 s64 delta;
 ktime_t now;

 now = ktime_get();
 delta = ktime_to_ns(ktime_sub(now, data->entry_stamp));
 pr_info("%s returned %lu and took %lld ns to execute\n",
   func_name, retval, (long long)delta);
 return 0;
}
