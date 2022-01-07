
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * __module_text_address (unsigned long) ;
 int preempt_disable () ;
 int preempt_enable () ;

bool is_module_text_address(unsigned long addr)
{
 bool ret;

 preempt_disable();
 ret = __module_text_address(addr) != ((void*)0);
 preempt_enable();

 return ret;
}
