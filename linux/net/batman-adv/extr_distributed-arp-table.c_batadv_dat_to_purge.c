
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_dat_entry {int last_update; } ;


 int BATADV_DAT_ENTRY_TIMEOUT ;
 int batadv_has_timed_out (int ,int ) ;

__attribute__((used)) static bool batadv_dat_to_purge(struct batadv_dat_entry *dat_entry)
{
 return batadv_has_timed_out(dat_entry->last_update,
        BATADV_DAT_ENTRY_TIMEOUT);
}
