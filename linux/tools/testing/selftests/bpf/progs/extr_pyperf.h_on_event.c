
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int __on_event (struct pt_regs*) ;

int on_event(struct pt_regs* ctx)
{
 int i, ret = 0;
 ret |= __on_event(ctx);
 ret |= __on_event(ctx);
 ret |= __on_event(ctx);
 ret |= __on_event(ctx);
 ret |= __on_event(ctx);
 return ret;
}
