
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 int PAGE_KERNEL ;
 void* __vmalloc (unsigned long,int ,int ) ;

void *vmalloc_32(unsigned long size)
{
 return __vmalloc(size, GFP_KERNEL, PAGE_KERNEL);
}
