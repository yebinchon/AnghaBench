
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_struct {int * pages; } ;
struct task_struct {int stack; int stack_vm_area; } ;


 int MEMCG_KERNEL_STACK_KB ;
 int NR_CACHED_STACKS ;
 int PAGE_SIZE ;
 int THREAD_SIZE ;
 int THREAD_SIZE_ORDER ;
 int __free_pages (int ,int ) ;
 int * cached_stacks ;
 int memcg_kmem_uncharge (int ,int ) ;
 int mod_memcg_page_state (int ,int ,int) ;
 struct vm_struct* task_stack_vm_area (struct task_struct*) ;
 int * this_cpu_cmpxchg (int ,int *,int ) ;
 int vfree_atomic (int ) ;
 int virt_to_page (int ) ;

__attribute__((used)) static inline void free_thread_stack(struct task_struct *tsk)
{
 __free_pages(virt_to_page(tsk->stack), THREAD_SIZE_ORDER);
}
