
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct db_export {int (* export_call_return ) (struct db_export*,struct call_return*) ;scalar_t__ call_return_last_db_id; } ;
struct call_return {scalar_t__ parent_db_id; scalar_t__ db_id; int cp; } ;


 int db_export__call_path (struct db_export*,int ) ;
 int stub1 (struct db_export*,struct call_return*) ;

int db_export__call_return(struct db_export *dbe, struct call_return *cr,
      u64 *parent_db_id)
{
 int err;

 err = db_export__call_path(dbe, cr->cp);
 if (err)
  return err;

 if (!cr->db_id)
  cr->db_id = ++dbe->call_return_last_db_id;

 if (parent_db_id) {
  if (!*parent_db_id)
   *parent_db_id = ++dbe->call_return_last_db_id;
  cr->parent_db_id = *parent_db_id;
 }

 if (dbe->export_call_return)
  return dbe->export_call_return(dbe, cr);

 return 0;
}
