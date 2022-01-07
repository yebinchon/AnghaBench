
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int PAGE_KERNEL ;
 int __GFP_NOWARN ;
 int __GFP_ZERO ;
 void* __vmalloc (size_t,int,int ) ;
 void* kzalloc (size_t,int) ;

void *ext4_kvzalloc(size_t size, gfp_t flags)
{
 void *ret;

 ret = kzalloc(size, flags | __GFP_NOWARN);
 if (!ret)
  ret = __vmalloc(size, flags | __GFP_ZERO, PAGE_KERNEL);
 return ret;
}
