
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 void* kmalloc (size_t,int ) ;

__attribute__((used)) static void *bch_alloc(size_t size, int *err)
{
 void *ptr;

 ptr = kmalloc(size, GFP_KERNEL);
 if (ptr == ((void*)0))
  *err = 1;
 return ptr;
}
