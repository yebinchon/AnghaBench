
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kasan_global {int dummy; } ;



void __asan_unregister_globals(struct kasan_global *globals, size_t size)
{
}
