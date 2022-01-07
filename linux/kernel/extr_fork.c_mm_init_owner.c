
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct mm_struct {struct task_struct* owner; } ;



__attribute__((used)) static void mm_init_owner(struct mm_struct *mm, struct task_struct *p)
{



}
