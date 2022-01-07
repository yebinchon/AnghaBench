
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kbuffer {unsigned long long (* read_long ) (struct kbuffer*,void*) ;} ;


 unsigned long long stub1 (struct kbuffer*,void*) ;

__attribute__((used)) static unsigned long long read_long(struct kbuffer *kbuf, void *ptr)
{
 return kbuf->read_long(kbuf, ptr);
}
