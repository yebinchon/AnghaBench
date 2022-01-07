
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashmap_entry {struct hashmap_entry* next; } ;



__attribute__((used)) static void hashmap_add_entry(struct hashmap_entry **pprev,
         struct hashmap_entry *entry)
{
 entry->next = *pprev;
 *pprev = entry;
}
