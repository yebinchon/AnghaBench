
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dccp_feat_entry {int node; } ;


 int dccp_feat_entry_destructor (struct dccp_feat_entry*) ;
 int list_del (int *) ;

__attribute__((used)) static inline void dccp_feat_list_pop(struct dccp_feat_entry *entry)
{
 list_del(&entry->node);
 dccp_feat_entry_destructor(entry);
}
