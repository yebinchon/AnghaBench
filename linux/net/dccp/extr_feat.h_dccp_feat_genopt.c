
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dccp_feat_entry {scalar_t__ is_local; scalar_t__ needs_confirm; } ;


 int DCCPO_CHANGE_L ;
 int DCCPO_CHANGE_R ;
 int DCCPO_CONFIRM_L ;
 int DCCPO_CONFIRM_R ;

__attribute__((used)) static inline u8 dccp_feat_genopt(struct dccp_feat_entry *entry)
{
 if (entry->needs_confirm)
  return entry->is_local ? DCCPO_CONFIRM_L : DCCPO_CONFIRM_R;
 return entry->is_local ? DCCPO_CHANGE_L : DCCPO_CHANGE_R;
}
