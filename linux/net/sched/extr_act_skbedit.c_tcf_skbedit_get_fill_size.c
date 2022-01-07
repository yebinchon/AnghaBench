
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct tc_skbedit {int dummy; } ;
struct tc_action {int dummy; } ;


 size_t nla_total_size (int) ;
 size_t nla_total_size_64bit (int) ;

__attribute__((used)) static size_t tcf_skbedit_get_fill_size(const struct tc_action *act)
{
 return nla_total_size(sizeof(struct tc_skbedit))
  + nla_total_size(sizeof(u32))
  + nla_total_size(sizeof(u16))
  + nla_total_size(sizeof(u32))
  + nla_total_size(sizeof(u16))
  + nla_total_size(sizeof(u32))
  + nla_total_size_64bit(sizeof(u64));
}
