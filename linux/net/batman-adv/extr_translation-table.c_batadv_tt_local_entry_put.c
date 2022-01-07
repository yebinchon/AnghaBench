
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int refcount; } ;
struct batadv_tt_local_entry {TYPE_1__ common; } ;


 int batadv_tt_local_entry_release ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void
batadv_tt_local_entry_put(struct batadv_tt_local_entry *tt_local_entry)
{
 kref_put(&tt_local_entry->common.refcount,
   batadv_tt_local_entry_release);
}
