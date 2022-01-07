
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 void* kvmalloc (size_t,int ) ;
 int memcpy (void*,void const*,size_t) ;

__attribute__((used)) static void *kvmemdup(const void *src, size_t len)
{
 void *p = kvmalloc(len, GFP_KERNEL);

 if (p)
  memcpy(p, src, len);
 return p;
}
