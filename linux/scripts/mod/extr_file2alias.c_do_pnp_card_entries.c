
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct module {int dev_table_buf; int name; } ;
typedef int acpi_id ;
struct TYPE_7__ {scalar_t__ id; } ;
struct TYPE_6__ {scalar_t__ id; } ;


 int DEF_FIELD_ADDR (void*,int ,TYPE_2__**) ;
 int DEF_FIELD_ADDR_VAR (void*,int ,TYPE_2__**,TYPE_1__**) ;
 int PNP_ID_LEN ;
 unsigned int PNP_MAX_DEVICES ;
 unsigned long SIZE_pnp_card_device_id ;
 int buf_printf (int *,char*,char const*) ;
 int device_id_check (int ,char*,unsigned long,unsigned long const,void*) ;
 TYPE_2__** devs ;
 TYPE_1__** devs_dup ;
 int pnp_card_device_id ;
 int strcmp (char const*,char const*) ;
 char toupper (char const) ;

__attribute__((used)) static void do_pnp_card_entries(void *symval, unsigned long size,
    struct module *mod)
{
 const unsigned long id_size = SIZE_pnp_card_device_id;
 const unsigned int count = (size / id_size)-1;
 unsigned int i;

 device_id_check(mod->name, "pnp", size, id_size, symval);

 for (i = 0; i < count; i++) {
  unsigned int j;
  DEF_FIELD_ADDR(symval + i * id_size, pnp_card_device_id, devs);

  for (j = 0; j < PNP_MAX_DEVICES; j++) {
   const char *id = (char *)(*devs)[j].id;
   int i2, j2;
   int dup = 0;

   if (!id[0])
    break;


   for (i2 = 0; i2 < i && !dup; i2++) {
    DEF_FIELD_ADDR_VAR(symval + i2 * id_size,
         pnp_card_device_id,
         devs, devs_dup);

    for (j2 = 0; j2 < PNP_MAX_DEVICES; j2++) {
     const char *id2 =
      (char *)(*devs_dup)[j2].id;

     if (!id2[0])
      break;

     if (!strcmp(id, id2)) {
      dup = 1;
      break;
     }
    }
   }


   if (!dup) {
    char acpi_id[PNP_ID_LEN];
    int k;

    buf_printf(&mod->dev_table_buf,
        "MODULE_ALIAS(\"pnp:d%s*\");\n", id);


    for (k = 0; k < sizeof(acpi_id); k++)
     acpi_id[k] = toupper(id[k]);
    buf_printf(&mod->dev_table_buf,
        "MODULE_ALIAS(\"acpi*:%s:*\");\n", acpi_id);
   }
  }
 }
}
