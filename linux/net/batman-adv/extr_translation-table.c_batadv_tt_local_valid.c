
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct batadv_tt_common_entry {int flags; } ;


 int BATADV_TT_CLIENT_NEW ;

__attribute__((used)) static bool batadv_tt_local_valid(const void *entry_ptr,
      const void *data_ptr,
      u8 *flags)
{
 const struct batadv_tt_common_entry *tt_common_entry = entry_ptr;

 if (tt_common_entry->flags & BATADV_TT_CLIENT_NEW)
  return 0;

 if (flags)
  *flags = tt_common_entry->flags;

 return 1;
}
