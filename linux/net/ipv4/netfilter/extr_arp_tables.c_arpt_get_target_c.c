
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_entry_target {int dummy; } ;
struct arpt_entry {int dummy; } ;


 struct xt_entry_target const* arpt_get_target (struct arpt_entry*) ;

__attribute__((used)) static inline const struct xt_entry_target *
arpt_get_target_c(const struct arpt_entry *e)
{
 return arpt_get_target((struct arpt_entry *)e);
}
