
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct thread {int db_id; int tid; int pid_; int comm_set; } ;
struct machine {int dummy; } ;
struct db_export {int dummy; } ;
struct comm {int dummy; } ;
typedef int pid_t ;


 int db_export__threads (struct db_export*,struct thread*,struct thread*,struct machine*,struct comm**) ;
 struct thread* machine__find_thread (struct machine*,int ,int ) ;
 struct thread* thread__main_thread (struct machine*,struct thread*) ;
 int thread__put (struct thread*) ;

__attribute__((used)) static int db_export__pid_tid(struct db_export *dbe, struct machine *machine,
         pid_t pid, pid_t tid, u64 *db_id,
         struct comm **comm_ptr, bool *is_idle)
{
 struct thread *thread = machine__find_thread(machine, pid, tid);
 struct thread *main_thread;
 int err = 0;

 if (!thread || !thread->comm_set)
  goto out_put;

 *is_idle = !thread->pid_ && !thread->tid;

 main_thread = thread__main_thread(machine, thread);

 err = db_export__threads(dbe, thread, main_thread, machine, comm_ptr);

 *db_id = thread->db_id;

 thread__put(main_thread);
out_put:
 thread__put(thread);

 return err;
}
