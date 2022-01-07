
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct user_namespace {int dummy; } ;
struct task_struct {int dummy; } ;
struct mm_struct {int flags; int def_flags; int user_ns; int * pmd_huge_pte; int exe_file; int arg_lock; int page_table_lock; int rss_stat; int pinned_vm; scalar_t__ locked_vm; scalar_t__ map_count; int * core_state; int mmlist; int mmap_sem; int mm_count; int mm_users; scalar_t__ vmacache_seqnum; int mm_rb; int * mmap; } ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {int flags; int def_flags; } ;


 int INIT_LIST_HEAD (int *) ;
 int MMF_INIT_MASK ;
 int RB_ROOT ;
 int RCU_INIT_POINTER (int ,int *) ;
 int VM_INIT_DEF_MASK ;
 int atomic64_set (int *,int ) ;
 int atomic_set (int *,int) ;
 TYPE_2__* current ;
 int default_dump_filter ;
 int free_mm (struct mm_struct*) ;
 int get_user_ns (struct user_namespace*) ;
 scalar_t__ init_new_context (struct task_struct*,struct mm_struct*) ;
 int init_rwsem (int *) ;
 int init_tlb_flush_pending (struct mm_struct*) ;
 int memset (int *,int ,int) ;
 scalar_t__ mm_alloc_pgd (struct mm_struct*) ;
 int mm_free_pgd (struct mm_struct*) ;
 int mm_init_aio (struct mm_struct*) ;
 int mm_init_cpumask (struct mm_struct*) ;
 int mm_init_owner (struct mm_struct*,struct task_struct*) ;
 int mm_init_uprobes_state (struct mm_struct*) ;
 int mm_pgtables_bytes_init (struct mm_struct*) ;
 int mmu_notifier_mm_init (struct mm_struct*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct mm_struct *mm_init(struct mm_struct *mm, struct task_struct *p,
 struct user_namespace *user_ns)
{
 mm->mmap = ((void*)0);
 mm->mm_rb = RB_ROOT;
 mm->vmacache_seqnum = 0;
 atomic_set(&mm->mm_users, 1);
 atomic_set(&mm->mm_count, 1);
 init_rwsem(&mm->mmap_sem);
 INIT_LIST_HEAD(&mm->mmlist);
 mm->core_state = ((void*)0);
 mm_pgtables_bytes_init(mm);
 mm->map_count = 0;
 mm->locked_vm = 0;
 atomic64_set(&mm->pinned_vm, 0);
 memset(&mm->rss_stat, 0, sizeof(mm->rss_stat));
 spin_lock_init(&mm->page_table_lock);
 spin_lock_init(&mm->arg_lock);
 mm_init_cpumask(mm);
 mm_init_aio(mm);
 mm_init_owner(mm, p);
 RCU_INIT_POINTER(mm->exe_file, ((void*)0));
 mmu_notifier_mm_init(mm);
 init_tlb_flush_pending(mm);



 mm_init_uprobes_state(mm);

 if (current->mm) {
  mm->flags = current->mm->flags & MMF_INIT_MASK;
  mm->def_flags = current->mm->def_flags & VM_INIT_DEF_MASK;
 } else {
  mm->flags = default_dump_filter;
  mm->def_flags = 0;
 }

 if (mm_alloc_pgd(mm))
  goto fail_nopgd;

 if (init_new_context(p, mm))
  goto fail_nocontext;

 mm->user_ns = get_user_ns(user_ns);
 return mm;

fail_nocontext:
 mm_free_pgd(mm);
fail_nopgd:
 free_mm(mm);
 return ((void*)0);
}
