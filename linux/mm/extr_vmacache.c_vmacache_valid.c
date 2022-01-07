
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ seqnum; } ;
struct task_struct {TYPE_1__ vmacache; } ;
struct mm_struct {scalar_t__ vmacache_seqnum; } ;


 struct task_struct* current ;
 int vmacache_flush (struct task_struct*) ;
 int vmacache_valid_mm (struct mm_struct*) ;

__attribute__((used)) static bool vmacache_valid(struct mm_struct *mm)
{
 struct task_struct *curr;

 if (!vmacache_valid_mm(mm))
  return 0;

 curr = current;
 if (mm->vmacache_seqnum != curr->vmacache.seqnum) {




  curr->vmacache.seqnum = mm->vmacache_seqnum;
  vmacache_flush(curr);
  return 0;
 }
 return 1;
}
