
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct db_export {int dummy; } ;
struct call_return {int dummy; } ;


 int db_export__call_return (struct db_export*,struct call_return*,int *) ;

__attribute__((used)) static int python_process_call_return(struct call_return *cr, u64 *parent_db_id,
          void *data)
{
 struct db_export *dbe = data;

 return db_export__call_return(dbe, cr, parent_db_id);
}
