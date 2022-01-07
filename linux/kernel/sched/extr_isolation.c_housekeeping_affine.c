
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
typedef enum hk_flags { ____Placeholder_hk_flags } hk_flags ;


 int housekeeping_flags ;
 int housekeeping_mask ;
 int housekeeping_overridden ;
 int set_cpus_allowed_ptr (struct task_struct*,int ) ;
 scalar_t__ static_branch_unlikely (int *) ;

void housekeeping_affine(struct task_struct *t, enum hk_flags flags)
{
 if (static_branch_unlikely(&housekeeping_overridden))
  if (housekeeping_flags & flags)
   set_cpus_allowed_ptr(t, housekeeping_mask);
}
