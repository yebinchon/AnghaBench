
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 unsigned long PAGE_ALIGN (unsigned long) ;
 unsigned long PAGE_SHIFT ;
 int PF_RANDOMIZE ;
 unsigned long STACK_RND_MASK ;
 TYPE_1__* current ;
 unsigned long get_random_long () ;

unsigned long randomize_stack_top(unsigned long stack_top)
{
 unsigned long random_variable = 0;

 if (current->flags & PF_RANDOMIZE) {
  random_variable = get_random_long();
  random_variable &= STACK_RND_MASK;
  random_variable <<= PAGE_SHIFT;
 }



 return PAGE_ALIGN(stack_top) - random_variable;

}
