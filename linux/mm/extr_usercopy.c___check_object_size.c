
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bypass_usercopy_checks ;
 int check_bogus_address (unsigned long const,unsigned long,int) ;
 int check_heap_object (void const*,unsigned long,int) ;
 int check_kernel_text_object (unsigned long const,unsigned long,int) ;
 int check_stack_object (void const*,unsigned long) ;
 scalar_t__ static_branch_unlikely (int *) ;
 int usercopy_abort (char*,int *,int,int ,unsigned long) ;

void __check_object_size(const void *ptr, unsigned long n, bool to_user)
{
 if (static_branch_unlikely(&bypass_usercopy_checks))
  return;


 if (!n)
  return;


 check_bogus_address((const unsigned long)ptr, n, to_user);


 switch (check_stack_object(ptr, n)) {
 case 128:

  break;
 case 130:
 case 129:





  return;
 default:
  usercopy_abort("process stack", ((void*)0), to_user, 0, n);
 }


 check_heap_object(ptr, n, to_user);


 check_kernel_text_object((const unsigned long)ptr, n, to_user);
}
