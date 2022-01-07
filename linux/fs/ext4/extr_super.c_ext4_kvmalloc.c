
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int PAGE_KERNEL ;
 int __GFP_NOWARN ;
 void* __vmalloc (size_t,int,int ) ;
 void* kmalloc (size_t,int) ;

void *ext4_kvmalloc(size_t size, gfp_t flags)
{
 void *ret;

 ret = kmalloc(size, flags | __GFP_NOWARN);
 if (!ret)
  ret = __vmalloc(size, flags, PAGE_KERNEL);
 return ret;
}
