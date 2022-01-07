
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pstore_record {scalar_t__ type; int id; } ;
struct persistent_ram_zone {scalar_t__ type; } ;


 scalar_t__ PSTORE_TYPE_DMESG ;
 int persistent_ram_old_size (struct persistent_ram_zone*) ;
 int persistent_ram_save_old (struct persistent_ram_zone*) ;

__attribute__((used)) static struct persistent_ram_zone *
ramoops_get_next_prz(struct persistent_ram_zone *przs[], int id,
       struct pstore_record *record)
{
 struct persistent_ram_zone *prz;


 if (!przs)
  return ((void*)0);

 prz = przs[id];
 if (!prz)
  return ((void*)0);


 if (prz->type == PSTORE_TYPE_DMESG)
  persistent_ram_save_old(prz);

 if (!persistent_ram_old_size(prz))
  return ((void*)0);

 record->type = prz->type;
 record->id = id;

 return prz;
}
