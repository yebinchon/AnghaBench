
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ebt_entry_target {int dummy; } ;
struct ebt_entry {int dummy; } ;


 struct ebt_entry_target const* ebt_get_target (struct ebt_entry*) ;

__attribute__((used)) static inline const struct ebt_entry_target *
ebt_get_target_c(const struct ebt_entry *e)
{
 return ebt_get_target((struct ebt_entry *)e);
}
