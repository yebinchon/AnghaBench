
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kasan_global {int dummy; } ;


 int register_global (struct kasan_global*) ;

void __asan_register_globals(struct kasan_global *globals, size_t size)
{
 int i;

 for (i = 0; i < size; i++)
  register_global(&globals[i]);
}
