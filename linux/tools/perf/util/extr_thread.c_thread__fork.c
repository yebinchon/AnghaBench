
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct thread {int tid; int ppid; scalar_t__ comm_set; } ;


 int ENOMEM ;
 int thread__clone_map_groups (struct thread*,struct thread*,int) ;
 char* thread__comm_str (struct thread*) ;
 int thread__set_comm (struct thread*,char const*,int ) ;

int thread__fork(struct thread *thread, struct thread *parent, u64 timestamp, bool do_maps_clone)
{
 if (parent->comm_set) {
  const char *comm = thread__comm_str(parent);
  int err;
  if (!comm)
   return -ENOMEM;
  err = thread__set_comm(thread, comm, timestamp);
  if (err)
   return err;
 }

 thread->ppid = parent->tid;
 return thread__clone_map_groups(thread, parent, do_maps_clone);
}
