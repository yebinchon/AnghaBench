
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mm_struct {int mmap_sem; } ;
struct mempolicy {int flags; } ;
typedef int nodemask_t ;
struct TYPE_4__ {struct mm_struct* mm; } ;


 int CAP_SYS_NICE ;
 long EINVAL ;
 int EIO ;
 int ENOMEM ;
 long EPERM ;
 scalar_t__ IS_ERR (struct mempolicy*) ;
 int LIST_HEAD (int ) ;
 int MIGRATE_SYNC ;
 unsigned short MPOL_DEFAULT ;
 int MPOL_F_MOF ;
 unsigned long MPOL_MF_DISCONTIG_OK ;
 unsigned long MPOL_MF_INVERT ;
 unsigned long MPOL_MF_LAZY ;
 unsigned long MPOL_MF_MOVE ;
 unsigned long MPOL_MF_MOVE_ALL ;
 unsigned long MPOL_MF_STRICT ;
 scalar_t__ MPOL_MF_VALID ;
 int MR_MEMPOLICY_MBIND ;
 int NODEMASK_SCRATCH (scalar_t__) ;
 int NODEMASK_SCRATCH_FREE (scalar_t__) ;
 int NUMA_NO_NODE ;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SIZE ;
 long PTR_ERR (struct mempolicy*) ;
 int WARN_ON_ONCE (unsigned long) ;
 int capable (int ) ;
 TYPE_1__* current ;
 int down_write (int *) ;
 int list_empty (int *) ;
 int mbind_range (struct mm_struct*,unsigned long,unsigned long,struct mempolicy*) ;
 int migrate_pages (int *,int ,int *,unsigned long,int ,int ) ;
 int migrate_prep () ;
 struct mempolicy* mpol_new (unsigned short,unsigned short,int *) ;
 int mpol_put (struct mempolicy*) ;
 int mpol_set_nodemask (struct mempolicy*,int *,scalar_t__) ;
 int new_page ;
 int * nodes_addr (int ) ;
 int pagelist ;
 int pr_debug (char*,unsigned long,unsigned long,unsigned short,unsigned short,int ) ;
 int putback_movable_pages (int *) ;
 int queue_pages_range (struct mm_struct*,unsigned long,unsigned long,int *,unsigned long,int *) ;
 scalar_t__ scratch ;
 int task_lock (TYPE_1__*) ;
 int task_unlock (TYPE_1__*) ;
 int up_write (int *) ;

__attribute__((used)) static long do_mbind(unsigned long start, unsigned long len,
       unsigned short mode, unsigned short mode_flags,
       nodemask_t *nmask, unsigned long flags)
{
 struct mm_struct *mm = current->mm;
 struct mempolicy *new;
 unsigned long end;
 int err;
 int ret;
 LIST_HEAD(pagelist);

 if (flags & ~(unsigned long)MPOL_MF_VALID)
  return -EINVAL;
 if ((flags & MPOL_MF_MOVE_ALL) && !capable(CAP_SYS_NICE))
  return -EPERM;

 if (start & ~PAGE_MASK)
  return -EINVAL;

 if (mode == MPOL_DEFAULT)
  flags &= ~MPOL_MF_STRICT;

 len = (len + PAGE_SIZE - 1) & PAGE_MASK;
 end = start + len;

 if (end < start)
  return -EINVAL;
 if (end == start)
  return 0;

 new = mpol_new(mode, mode_flags, nmask);
 if (IS_ERR(new))
  return PTR_ERR(new);

 if (flags & MPOL_MF_LAZY)
  new->flags |= MPOL_F_MOF;





 if (!new)
  flags |= MPOL_MF_DISCONTIG_OK;

 pr_debug("mbind %lx-%lx mode:%d flags:%d nodes:%lx\n",
   start, start + len, mode, mode_flags,
   nmask ? nodes_addr(*nmask)[0] : NUMA_NO_NODE);

 if (flags & (MPOL_MF_MOVE | MPOL_MF_MOVE_ALL)) {

  err = migrate_prep();
  if (err)
   goto mpol_out;
 }
 {
  NODEMASK_SCRATCH(scratch);
  if (scratch) {
   down_write(&mm->mmap_sem);
   task_lock(current);
   err = mpol_set_nodemask(new, nmask, scratch);
   task_unlock(current);
   if (err)
    up_write(&mm->mmap_sem);
  } else
   err = -ENOMEM;
  NODEMASK_SCRATCH_FREE(scratch);
 }
 if (err)
  goto mpol_out;

 ret = queue_pages_range(mm, start, end, nmask,
     flags | MPOL_MF_INVERT, &pagelist);

 if (ret < 0) {
  err = -EIO;
  goto up_out;
 }

 err = mbind_range(mm, start, end, new);

 if (!err) {
  int nr_failed = 0;

  if (!list_empty(&pagelist)) {
   WARN_ON_ONCE(flags & MPOL_MF_LAZY);
   nr_failed = migrate_pages(&pagelist, new_page, ((void*)0),
    start, MIGRATE_SYNC, MR_MEMPOLICY_MBIND);
   if (nr_failed)
    putback_movable_pages(&pagelist);
  }

  if ((ret > 0) || (nr_failed && (flags & MPOL_MF_STRICT)))
   err = -EIO;
 } else
  putback_movable_pages(&pagelist);

up_out:
 up_write(&mm->mmap_sem);
mpol_out:
 mpol_put(new);
 return err;
}
