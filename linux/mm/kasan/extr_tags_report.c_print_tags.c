
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ kasan_mem_to_shadow (void const*) ;
 int pr_err (char*,int ,int ) ;

void print_tags(u8 addr_tag, const void *addr)
{
 u8 *shadow = (u8 *)kasan_mem_to_shadow(addr);

 pr_err("Pointer tag: [%02x], memory tag: [%02x]\n", addr_tag, *shadow);
}
