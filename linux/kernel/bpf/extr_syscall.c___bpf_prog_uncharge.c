
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct user_struct {int locked_vm; } ;


 int atomic_long_sub (int ,int *) ;

void __bpf_prog_uncharge(struct user_struct *user, u32 pages)
{
 if (user)
  atomic_long_sub(pages, &user->locked_vm);
}
