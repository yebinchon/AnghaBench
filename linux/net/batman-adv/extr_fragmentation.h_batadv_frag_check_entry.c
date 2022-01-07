
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_frag_table_entry {int timestamp; int fragment_list; } ;


 int BATADV_FRAG_TIMEOUT ;
 scalar_t__ batadv_has_timed_out (int ,int ) ;
 int hlist_empty (int *) ;

__attribute__((used)) static inline bool
batadv_frag_check_entry(struct batadv_frag_table_entry *frags_entry)
{
 if (!hlist_empty(&frags_entry->fragment_list) &&
     batadv_has_timed_out(frags_entry->timestamp, BATADV_FRAG_TIMEOUT))
  return 1;
 return 0;
}
