
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct special_entry {int size; scalar_t__ sec; } ;
struct special_alt {int list; } ;
struct section {int len; int name; } ;
struct list_head {int dummy; } ;
struct elf {int dummy; } ;


 int INIT_LIST_HEAD (struct list_head*) ;
 int WARN (char*,...) ;
 struct special_entry* entries ;
 struct section* find_section_by_name (struct elf*,scalar_t__) ;
 int get_alt_entry (struct elf*,struct special_entry*,struct section*,int,struct special_alt*) ;
 int list_add_tail (int *,struct list_head*) ;
 struct special_alt* malloc (int) ;
 int memset (struct special_alt*,int ,int) ;

int special_get_alts(struct elf *elf, struct list_head *alts)
{
 struct special_entry *entry;
 struct section *sec;
 unsigned int nr_entries;
 struct special_alt *alt;
 int idx, ret;

 INIT_LIST_HEAD(alts);

 for (entry = entries; entry->sec; entry++) {
  sec = find_section_by_name(elf, entry->sec);
  if (!sec)
   continue;

  if (sec->len % entry->size != 0) {
   WARN("%s size not a multiple of %d",
        sec->name, entry->size);
   return -1;
  }

  nr_entries = sec->len / entry->size;

  for (idx = 0; idx < nr_entries; idx++) {
   alt = malloc(sizeof(*alt));
   if (!alt) {
    WARN("malloc failed");
    return -1;
   }
   memset(alt, 0, sizeof(*alt));

   ret = get_alt_entry(elf, entry, sec, idx, alt);
   if (ret)
    return ret;

   list_add_tail(&alt->list, alts);
  }
 }

 return 0;
}
