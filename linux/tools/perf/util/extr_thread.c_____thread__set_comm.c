
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct thread {int comm_set; int mg; int comm_list; } ;
struct comm {int list; } ;


 int ENOMEM ;
 struct comm* comm__new (char const*,int ,int) ;
 int comm__override (struct comm*,char const*,int ,int) ;
 int list_add (int *,int *) ;
 struct comm* thread__comm (struct thread*) ;
 int unwind__flush_access (int ) ;

__attribute__((used)) static int ____thread__set_comm(struct thread *thread, const char *str,
    u64 timestamp, bool exec)
{
 struct comm *new, *curr = thread__comm(thread);


 if (!thread->comm_set) {
  int err = comm__override(curr, str, timestamp, exec);
  if (err)
   return err;
 } else {
  new = comm__new(str, timestamp, exec);
  if (!new)
   return -ENOMEM;
  list_add(&new->list, &thread->comm_list);

  if (exec)
   unwind__flush_access(thread->mg);
 }

 thread->comm_set = 1;

 return 0;
}
