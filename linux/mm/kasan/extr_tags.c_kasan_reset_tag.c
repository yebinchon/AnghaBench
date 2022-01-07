
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* reset_tag (void const*) ;

void *kasan_reset_tag(const void *addr)
{
 return reset_tag(addr);
}
