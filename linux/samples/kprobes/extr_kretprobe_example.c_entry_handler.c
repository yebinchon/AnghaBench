
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct my_data {int entry_stamp; } ;
struct kretprobe_instance {scalar_t__ data; } ;
struct TYPE_2__ {int mm; } ;


 TYPE_1__* current ;
 int ktime_get () ;

__attribute__((used)) static int entry_handler(struct kretprobe_instance *ri, struct pt_regs *regs)
{
 struct my_data *data;

 if (!current->mm)
  return 1;

 data = (struct my_data *)ri->data;
 data->entry_stamp = ktime_get();
 return 0;
}
