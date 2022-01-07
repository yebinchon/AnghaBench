
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printk_context ;
 int this_cpu_inc (int ) ;

void __printk_safe_enter(void)
{
 this_cpu_inc(printk_context);
}
