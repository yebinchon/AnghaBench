
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_csum {int dummy; } ;
struct tc_action {int dummy; } ;


 size_t nla_total_size (int) ;

__attribute__((used)) static size_t tcf_csum_get_fill_size(const struct tc_action *act)
{
 return nla_total_size(sizeof(struct tc_csum));
}
