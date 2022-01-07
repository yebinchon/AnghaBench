
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int db_id; } ;
struct machine {int dummy; } ;
struct db_export {int dummy; } ;
struct comm {int dummy; } ;


 int db_export__comm (struct db_export*,struct comm*,struct thread*) ;
 int db_export__comm_thread (struct db_export*,struct comm*,struct thread*) ;
 int db_export__exec_comm (struct db_export*,struct comm*,struct thread*) ;
 int db_export__thread (struct db_export*,struct thread*,struct machine*,struct thread*) ;
 struct comm* machine__thread_exec_comm (struct machine*,struct thread*) ;
 struct comm* thread__comm (struct thread*) ;

__attribute__((used)) static int db_export__threads(struct db_export *dbe, struct thread *thread,
         struct thread *main_thread,
         struct machine *machine, struct comm **comm_ptr)
{
 struct comm *comm = ((void*)0);
 struct comm *curr_comm;
 int err;

 if (main_thread) {




  err = db_export__thread(dbe, main_thread, machine, main_thread);
  if (err)
   return err;




  comm = machine__thread_exec_comm(machine, main_thread);
  if (comm) {
   err = db_export__exec_comm(dbe, comm, main_thread);
   if (err)
    return err;
   *comm_ptr = comm;
  }
 }

 if (thread != main_thread) {




  bool export_comm_thread = comm && !thread->db_id;

  err = db_export__thread(dbe, thread, machine, main_thread);
  if (err)
   return err;

  if (export_comm_thread) {
   err = db_export__comm_thread(dbe, comm, thread);
   if (err)
    return err;
  }
 }

 curr_comm = thread__comm(thread);
 if (curr_comm)
  return db_export__comm(dbe, curr_comm, thread);

 return 0;
}
