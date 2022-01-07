
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct symbol {int dummy; } ;
struct dso {int dummy; } ;
struct db_export {int (* export_symbol ) (struct db_export*,struct symbol*,struct dso*) ;scalar_t__ symbol_last_db_id; } ;


 int stub1 (struct db_export*,struct symbol*,struct dso*) ;
 scalar_t__* symbol__priv (struct symbol*) ;

int db_export__symbol(struct db_export *dbe, struct symbol *sym,
        struct dso *dso)
{
 u64 *sym_db_id = symbol__priv(sym);

 if (*sym_db_id)
  return 0;

 *sym_db_id = ++dbe->symbol_last_db_id;

 if (dbe->export_symbol)
  return dbe->export_symbol(dbe, sym, dso);

 return 0;
}
