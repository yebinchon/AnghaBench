
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kprobe_blacklist_entry {unsigned long start_addr; unsigned long end_addr; int list; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int kallsyms_lookup_size_offset (unsigned long,unsigned long*,unsigned long*) ;
 int kernel_text_address (unsigned long) ;
 struct kprobe_blacklist_entry* kmalloc (int,int ) ;
 int kprobe_blacklist ;
 int list_add_tail (int *,int *) ;

int kprobe_add_ksym_blacklist(unsigned long entry)
{
 struct kprobe_blacklist_entry *ent;
 unsigned long offset = 0, size = 0;

 if (!kernel_text_address(entry) ||
     !kallsyms_lookup_size_offset(entry, &size, &offset))
  return -EINVAL;

 ent = kmalloc(sizeof(*ent), GFP_KERNEL);
 if (!ent)
  return -ENOMEM;
 ent->start_addr = entry;
 ent->end_addr = entry + size;
 INIT_LIST_HEAD(&ent->list);
 list_add_tail(&ent->list, &kprobe_blacklist);

 return (int)size;
}
