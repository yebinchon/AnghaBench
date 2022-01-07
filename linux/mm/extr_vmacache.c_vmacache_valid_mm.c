
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {int dummy; } ;
struct TYPE_2__ {int flags; struct mm_struct* mm; } ;


 int PF_KTHREAD ;
 TYPE_1__* current ;

__attribute__((used)) static inline bool vmacache_valid_mm(struct mm_struct *mm)
{
 return current->mm == mm && !(current->flags & PF_KTHREAD);
}
