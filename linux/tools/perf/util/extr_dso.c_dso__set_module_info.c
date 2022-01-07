
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct machine {int dummy; } ;
struct kmod_path {int name; scalar_t__ comp; scalar_t__ kmod; } ;
struct dso {scalar_t__ comp; int symtab_type; } ;


 int DSO_BINARY_TYPE__GUEST_KMODULE ;
 int DSO_BINARY_TYPE__SYSTEM_PATH_KMODULE ;
 int dso__set_short_name (struct dso*,int ,int) ;
 scalar_t__ machine__is_host (struct machine*) ;
 int strdup (int ) ;

void dso__set_module_info(struct dso *dso, struct kmod_path *m,
     struct machine *machine)
{
 if (machine__is_host(machine))
  dso->symtab_type = DSO_BINARY_TYPE__SYSTEM_PATH_KMODULE;
 else
  dso->symtab_type = DSO_BINARY_TYPE__GUEST_KMODULE;


 if (m->kmod && m->comp) {
  dso->symtab_type++;
  dso->comp = m->comp;
 }

 dso__set_short_name(dso, strdup(m->name), 1);
}
