
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_struct {int * pages; } ;
struct task_struct {int dummy; } ;


 int GFP_KERNEL ;
 int MEMCG_KERNEL_STACK_KB ;
 int PAGE_SIZE ;
 int THREAD_SIZE ;
 int memcg_kmem_charge (int ,int ,int ) ;
 int mod_memcg_page_state (int ,int ,int) ;
 struct vm_struct* task_stack_vm_area (struct task_struct*) ;

__attribute__((used)) static int memcg_charge_kernel_stack(struct task_struct *tsk)
{
 return 0;
}
