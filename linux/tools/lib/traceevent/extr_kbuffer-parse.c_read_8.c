
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kbuffer {unsigned long long (* read_8 ) (void*) ;} ;


 unsigned long long stub1 (void*) ;

__attribute__((used)) static unsigned long long read_8(struct kbuffer *kbuf, void *ptr)
{
 return kbuf->read_8(ptr);
}
