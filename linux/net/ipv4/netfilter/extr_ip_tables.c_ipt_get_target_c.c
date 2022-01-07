
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_entry_target {int dummy; } ;
struct ipt_entry {int dummy; } ;


 struct xt_entry_target const* ipt_get_target (struct ipt_entry*) ;

__attribute__((used)) static inline const struct xt_entry_target *
ipt_get_target_c(const struct ipt_entry *e)
{
 return ipt_get_target((struct ipt_entry *)e);
}
