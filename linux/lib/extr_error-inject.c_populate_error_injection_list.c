
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct error_injection_entry {int etype; scalar_t__ addr; } ;
struct ei_entry {unsigned long start_addr; unsigned long end_addr; int list; void* priv; int etype; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 unsigned long arch_deref_entry_point (void*) ;
 int ei_mutex ;
 int error_injection_list ;
 int kallsyms_lookup_size_offset (unsigned long,unsigned long*,unsigned long*) ;
 int kernel_text_address (unsigned long) ;
 struct ei_entry* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,void*) ;

__attribute__((used)) static void populate_error_injection_list(struct error_injection_entry *start,
       struct error_injection_entry *end,
       void *priv)
{
 struct error_injection_entry *iter;
 struct ei_entry *ent;
 unsigned long entry, offset = 0, size = 0;

 mutex_lock(&ei_mutex);
 for (iter = start; iter < end; iter++) {
  entry = arch_deref_entry_point((void *)iter->addr);

  if (!kernel_text_address(entry) ||
      !kallsyms_lookup_size_offset(entry, &size, &offset)) {
   pr_err("Failed to find error inject entry at %p\n",
    (void *)entry);
   continue;
  }

  ent = kmalloc(sizeof(*ent), GFP_KERNEL);
  if (!ent)
   break;
  ent->start_addr = entry;
  ent->end_addr = entry + size;
  ent->etype = iter->etype;
  ent->priv = priv;
  INIT_LIST_HEAD(&ent->list);
  list_add_tail(&ent->list, &error_injection_list);
 }
 mutex_unlock(&ei_mutex);
}
