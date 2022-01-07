
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct db_export {int dummy; } ;
struct comm {scalar_t__ db_id; } ;


 int __db_export__comm (struct db_export*,struct comm*,struct thread*) ;
 int db_export__comm_thread (struct db_export*,struct comm*,struct thread*) ;

int db_export__exec_comm(struct db_export *dbe, struct comm *comm,
    struct thread *main_thread)
{
 int err;

 if (comm->db_id)
  return 0;

 err = __db_export__comm(dbe, comm, main_thread);
 if (err)
  return err;
 return db_export__comm_thread(dbe, comm, main_thread);
}
