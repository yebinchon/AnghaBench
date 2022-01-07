
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct resource_entry {struct resource __res; struct resource* res; int node; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct resource_entry* kzalloc (int,int ) ;

struct resource_entry *resource_list_create_entry(struct resource *res,
        size_t extra_size)
{
 struct resource_entry *entry;

 entry = kzalloc(sizeof(*entry) + extra_size, GFP_KERNEL);
 if (entry) {
  INIT_LIST_HEAD(&entry->node);
  entry->res = res ? res : &entry->__res;
 }

 return entry;
}
