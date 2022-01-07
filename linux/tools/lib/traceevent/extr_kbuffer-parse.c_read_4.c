
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kbuffer {unsigned int (* read_4 ) (void*) ;} ;


 unsigned int stub1 (void*) ;

__attribute__((used)) static unsigned int read_4(struct kbuffer *kbuf, void *ptr)
{
 return kbuf->read_4(ptr);
}
