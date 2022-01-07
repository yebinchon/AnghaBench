
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int added_at; } ;
struct batadv_tt_global_entry {TYPE_1__ common; int roam_at; } ;


 int BATADV_TT_CLIENT_ROAM ;
 unsigned long BATADV_TT_CLIENT_ROAM_TIMEOUT ;
 int BATADV_TT_CLIENT_TEMP ;
 unsigned long BATADV_TT_CLIENT_TEMP_TIMEOUT ;
 scalar_t__ batadv_has_timed_out (int ,unsigned long) ;

__attribute__((used)) static bool batadv_tt_global_to_purge(struct batadv_tt_global_entry *tt_global,
          char **msg)
{
 bool purge = 0;
 unsigned long roam_timeout = BATADV_TT_CLIENT_ROAM_TIMEOUT;
 unsigned long temp_timeout = BATADV_TT_CLIENT_TEMP_TIMEOUT;

 if ((tt_global->common.flags & BATADV_TT_CLIENT_ROAM) &&
     batadv_has_timed_out(tt_global->roam_at, roam_timeout)) {
  purge = 1;
  *msg = "Roaming timeout\n";
 }

 if ((tt_global->common.flags & BATADV_TT_CLIENT_TEMP) &&
     batadv_has_timed_out(tt_global->common.added_at, temp_timeout)) {
  purge = 1;
  *msg = "Temporary client timeout\n";
 }

 return purge;
}
