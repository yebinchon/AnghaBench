
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_ERR_VALUE (void const*) ;
 unsigned long PAGE_SIZE ;

__attribute__((used)) static const char *check_pointer_msg(const void *ptr)
{
 if (!ptr)
  return "(null)";

 if ((unsigned long)ptr < PAGE_SIZE || IS_ERR_VALUE(ptr))
  return "(efault)";

 return ((void*)0);
}
