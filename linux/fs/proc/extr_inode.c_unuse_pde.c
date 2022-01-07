
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int pde_unload_completion; int in_use; } ;


 scalar_t__ BIAS ;
 scalar_t__ atomic_dec_return (int *) ;
 int complete (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void unuse_pde(struct proc_dir_entry *pde)
{
 if (unlikely(atomic_dec_return(&pde->in_use) == BIAS))
  complete(pde->pde_unload_completion);
}
