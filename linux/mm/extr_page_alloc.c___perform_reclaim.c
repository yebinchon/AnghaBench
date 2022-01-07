
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alloc_context {int nodemask; int zonelist; } ;
typedef int gfp_t ;


 int cond_resched () ;
 int cpuset_memory_pressure_bump () ;
 int fs_reclaim_acquire (int ) ;
 int fs_reclaim_release (int ) ;
 int memalloc_noreclaim_restore (unsigned int) ;
 unsigned int memalloc_noreclaim_save () ;
 int psi_memstall_enter (unsigned long*) ;
 int psi_memstall_leave (unsigned long*) ;
 int try_to_free_pages (int ,unsigned int,int ,int ) ;

__attribute__((used)) static int
__perform_reclaim(gfp_t gfp_mask, unsigned int order,
     const struct alloc_context *ac)
{
 int progress;
 unsigned int noreclaim_flag;
 unsigned long pflags;

 cond_resched();


 cpuset_memory_pressure_bump();
 psi_memstall_enter(&pflags);
 fs_reclaim_acquire(gfp_mask);
 noreclaim_flag = memalloc_noreclaim_save();

 progress = try_to_free_pages(ac->zonelist, order, gfp_mask,
        ac->nodemask);

 memalloc_noreclaim_restore(noreclaim_flag);
 fs_reclaim_release(gfp_mask);
 psi_memstall_leave(&pflags);

 cond_resched();

 return progress;
}
