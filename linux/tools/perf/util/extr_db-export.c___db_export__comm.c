
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct db_export {int (* export_comm ) (struct db_export*,struct comm*,struct thread*) ;scalar_t__ comm_last_db_id; } ;
struct comm {scalar_t__ db_id; } ;


 int stub1 (struct db_export*,struct comm*,struct thread*) ;

__attribute__((used)) static int __db_export__comm(struct db_export *dbe, struct comm *comm,
        struct thread *thread)
{
 comm->db_id = ++dbe->comm_last_db_id;

 if (dbe->export_comm)
  return dbe->export_comm(dbe, comm, thread);

 return 0;
}
