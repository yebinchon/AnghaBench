
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auxtrace_cache {int entry_size; } ;


 void* malloc (int ) ;

void *auxtrace_cache__alloc_entry(struct auxtrace_cache *c)
{
 return malloc(c->entry_size);
}
