
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {scalar_t__ pid_; scalar_t__ mg; int tid; } ;


 int map_groups__clone (struct thread*,scalar_t__) ;
 int pr_debug (char*,scalar_t__,int ,scalar_t__,int ) ;
 int thread__prepare_access (struct thread*) ;

__attribute__((used)) static int thread__clone_map_groups(struct thread *thread,
        struct thread *parent,
        bool do_maps_clone)
{

 if (thread->pid_ == parent->pid_)
  return thread__prepare_access(thread);

 if (thread->mg == parent->mg) {
  pr_debug("broken map groups on thread %d/%d parent %d/%d\n",
    thread->pid_, thread->tid, parent->pid_, parent->tid);
  return 0;
 }

 return do_maps_clone ? map_groups__clone(thread, parent->mg) : 0;
}
