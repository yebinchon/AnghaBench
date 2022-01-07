
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct machine {scalar_t__ db_id; } ;
struct db_export {int (* export_machine ) (struct db_export*,struct machine*) ;scalar_t__ machine_last_db_id; } ;


 int stub1 (struct db_export*,struct machine*) ;

int db_export__machine(struct db_export *dbe, struct machine *machine)
{
 if (machine->db_id)
  return 0;

 machine->db_id = ++dbe->machine_last_db_id;

 if (dbe->export_machine)
  return dbe->export_machine(dbe, machine);

 return 0;
}
