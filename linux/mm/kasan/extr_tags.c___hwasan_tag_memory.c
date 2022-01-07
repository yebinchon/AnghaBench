
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int kasan_poison_shadow (void*,unsigned long,int ) ;

void __hwasan_tag_memory(unsigned long addr, u8 tag, unsigned long size)
{
 kasan_poison_shadow((void *)addr, size, tag);
}
