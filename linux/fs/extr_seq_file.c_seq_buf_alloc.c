
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL_ACCOUNT ;
 void* kvmalloc (unsigned long,int ) ;

__attribute__((used)) static void *seq_buf_alloc(unsigned long size)
{
 return kvmalloc(size, GFP_KERNEL_ACCOUNT);
}
