
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct dso {scalar_t__ db_id; } ;
struct db_export {int dummy; } ;
struct addr_location {TYPE_2__* sym; scalar_t__ addr; int machine; TYPE_1__* map; } ;
struct TYPE_7__ {scalar_t__ start; } ;
struct TYPE_6__ {struct dso* dso; } ;


 int db_export__dso (struct db_export*,struct dso*,int ) ;
 int db_export__symbol (struct db_export*,TYPE_2__*,struct dso*) ;
 int dso__insert_symbol (struct dso*,TYPE_2__*) ;
 TYPE_2__* symbol__new (scalar_t__,int ,int ,int ,char*) ;
 scalar_t__* symbol__priv (TYPE_2__*) ;

__attribute__((used)) static int db_ids_from_al(struct db_export *dbe, struct addr_location *al,
     u64 *dso_db_id, u64 *sym_db_id, u64 *offset)
{
 int err;

 if (al->map) {
  struct dso *dso = al->map->dso;

  err = db_export__dso(dbe, dso, al->machine);
  if (err)
   return err;
  *dso_db_id = dso->db_id;

  if (!al->sym) {
   al->sym = symbol__new(al->addr, 0, 0, 0, "unknown");
   if (al->sym)
    dso__insert_symbol(dso, al->sym);
  }

  if (al->sym) {
   u64 *db_id = symbol__priv(al->sym);

   err = db_export__symbol(dbe, al->sym, dso);
   if (err)
    return err;
   *sym_db_id = *db_id;
   *offset = al->addr - al->sym->start;
  }
 }

 return 0;
}
