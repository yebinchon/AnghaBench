
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct kprobe {int dummy; } ;



__attribute__((used)) static int pre_handler_kretprobe(struct kprobe *p, struct pt_regs *regs)
{
 return 0;
}
