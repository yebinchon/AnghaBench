
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_match {int dummy; } ;
struct sw_flow_key {int dummy; } ;
struct nlattr {int dummy; } ;


 int nsh_key_put_from_nlattr (struct nlattr const*,struct sw_flow_match*,int,int,int) ;
 int ovs_match_init (struct sw_flow_match*,struct sw_flow_key*,int,int *) ;

__attribute__((used)) static bool validate_nsh(const struct nlattr *attr, bool is_mask,
    bool is_push_nsh, bool log)
{
 struct sw_flow_match match;
 struct sw_flow_key key;
 int ret = 0;

 ovs_match_init(&match, &key, 1, ((void*)0));
 ret = nsh_key_put_from_nlattr(attr, &match, is_mask,
          is_push_nsh, log);
 return !ret;
}
