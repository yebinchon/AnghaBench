
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct batadv_tt_orig_list_entry {int list; int orig_node; } ;
struct TYPE_2__ {int vid; } ;
struct batadv_tt_global_entry {int orig_list_count; TYPE_1__ common; int list_lock; } ;


 int atomic_dec (int *) ;
 int batadv_tt_global_size_dec (int ,int ) ;
 int batadv_tt_orig_list_entry_put (struct batadv_tt_orig_list_entry*) ;
 int hlist_del_rcu (int *) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void
_batadv_tt_global_del_orig_entry(struct batadv_tt_global_entry *tt_global_entry,
     struct batadv_tt_orig_list_entry *orig_entry)
{
 lockdep_assert_held(&tt_global_entry->list_lock);

 batadv_tt_global_size_dec(orig_entry->orig_node,
      tt_global_entry->common.vid);
 atomic_dec(&tt_global_entry->orig_list_count);



 hlist_del_rcu(&orig_entry->list);
 batadv_tt_orig_list_entry_put(orig_entry);
}
