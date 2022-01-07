
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct db_export {int (* export_branch_type ) (struct db_export*,int ,char const*) ;} ;


 int stub1 (struct db_export*,int ,char const*) ;

int db_export__branch_type(struct db_export *dbe, u32 branch_type,
      const char *name)
{
 if (dbe->export_branch_type)
  return dbe->export_branch_type(dbe, branch_type, name);

 return 0;
}
