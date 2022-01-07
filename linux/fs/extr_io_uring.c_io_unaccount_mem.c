
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_struct {int locked_vm; } ;


 int atomic_long_sub (unsigned long,int *) ;

__attribute__((used)) static void io_unaccount_mem(struct user_struct *user, unsigned long nr_pages)
{
 atomic_long_sub(nr_pages, &user->locked_vm);
}
