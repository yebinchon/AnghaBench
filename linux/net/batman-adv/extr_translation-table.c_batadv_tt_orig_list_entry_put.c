
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_tt_orig_list_entry {int refcount; } ;


 int batadv_tt_orig_list_entry_release ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void
batadv_tt_orig_list_entry_put(struct batadv_tt_orig_list_entry *orig_entry)
{
 kref_put(&orig_entry->refcount, batadv_tt_orig_list_entry_release);
}
