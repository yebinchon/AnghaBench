
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ZERO_OR_NULL_PTR (void*) ;
 int kfree (void*) ;
 size_t ksize (void*) ;
 int memset (void*,int ,size_t) ;
 scalar_t__ unlikely (int ) ;

void kzfree(const void *p)
{
 size_t ks;
 void *mem = (void *)p;

 if (unlikely(ZERO_OR_NULL_PTR(mem)))
  return;
 ks = ksize(mem);
 memset(mem, 0, ks);
 kfree(mem);
}
