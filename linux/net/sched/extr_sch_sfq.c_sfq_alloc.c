
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 void* kvmalloc (size_t,int ) ;

__attribute__((used)) static void *sfq_alloc(size_t sz)
{
 return kvmalloc(sz, GFP_KERNEL);
}
