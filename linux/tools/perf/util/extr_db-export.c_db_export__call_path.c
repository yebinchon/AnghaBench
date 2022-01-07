
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct db_export {int (* export_call_path ) (struct db_export*,struct call_path*) ;scalar_t__ call_path_last_db_id; } ;
struct call_path {scalar_t__ db_id; struct call_path* parent; } ;


 int stub1 (struct db_export*,struct call_path*) ;

int db_export__call_path(struct db_export *dbe, struct call_path *cp)
{
 int err;

 if (cp->db_id)
  return 0;

 if (cp->parent) {
  err = db_export__call_path(dbe, cp->parent);
  if (err)
   return err;
 }

 cp->db_id = ++dbe->call_path_last_db_id;

 if (dbe->export_call_path)
  return dbe->export_call_path(dbe, cp);

 return 0;
}
