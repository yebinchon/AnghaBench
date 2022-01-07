
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int refcount; } ;
struct batadv_tt_global_entry {TYPE_1__ common; } ;


 int batadv_tt_global_entry_release ;
 int kref_put (int *,int ) ;

void batadv_tt_global_entry_put(struct batadv_tt_global_entry *tt_global_entry)
{
 kref_put(&tt_global_entry->common.refcount,
   batadv_tt_global_entry_release);
}
