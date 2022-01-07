
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
struct batadv_tt_local_entry {TYPE_1__ common; } ;
struct TYPE_4__ {int flags; } ;
struct batadv_tt_global_entry {TYPE_2__ common; } ;


 int BATADV_TT_CLIENT_ISOLA ;
 int BATADV_TT_CLIENT_WIFI ;

__attribute__((used)) static bool
_batadv_is_ap_isolated(struct batadv_tt_local_entry *tt_local_entry,
         struct batadv_tt_global_entry *tt_global_entry)
{
 if (tt_local_entry->common.flags & BATADV_TT_CLIENT_WIFI &&
     tt_global_entry->common.flags & BATADV_TT_CLIENT_WIFI)
  return 1;


 if (tt_local_entry->common.flags & BATADV_TT_CLIENT_ISOLA &&
     tt_global_entry->common.flags & BATADV_TT_CLIENT_ISOLA)
  return 1;

 return 0;
}
