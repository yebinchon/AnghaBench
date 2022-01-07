
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int in_use; } ;


 int atomic_inc_unless_negative (int *) ;
 int likely (int ) ;

__attribute__((used)) static inline int use_pde(struct proc_dir_entry *pde)
{
 return likely(atomic_inc_unless_negative(&pde->in_use));
}
