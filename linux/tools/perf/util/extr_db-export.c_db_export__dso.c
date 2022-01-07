
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct machine {int dummy; } ;
struct dso {scalar_t__ db_id; } ;
struct db_export {int (* export_dso ) (struct db_export*,struct dso*,struct machine*) ;scalar_t__ dso_last_db_id; } ;


 int stub1 (struct db_export*,struct dso*,struct machine*) ;

int db_export__dso(struct db_export *dbe, struct dso *dso,
     struct machine *machine)
{
 if (dso->db_id)
  return 0;

 dso->db_id = ++dbe->dso_last_db_id;

 if (dbe->export_dso)
  return dbe->export_dso(dbe, dso, machine);

 return 0;
}
