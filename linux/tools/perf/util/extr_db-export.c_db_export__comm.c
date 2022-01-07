
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct db_export {int dummy; } ;
struct comm {scalar_t__ db_id; } ;


 int __db_export__comm (struct db_export*,struct comm*,struct thread*) ;

int db_export__comm(struct db_export *dbe, struct comm *comm,
      struct thread *thread)
{
 if (comm->db_id)
  return 0;

 return __db_export__comm(dbe, comm, thread);
}
