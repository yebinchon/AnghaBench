
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct ila_xlat_params {int dummy; } ;
struct genl_info {int dummy; } ;


 struct net* genl_info_net (struct genl_info*) ;
 int ila_add_mapping (struct net*,struct ila_xlat_params*) ;
 int parse_nl_config (struct genl_info*,struct ila_xlat_params*) ;

int ila_xlat_nl_cmd_add_mapping(struct sk_buff *skb, struct genl_info *info)
{
 struct net *net = genl_info_net(info);
 struct ila_xlat_params p;
 int err;

 err = parse_nl_config(info, &p);
 if (err)
  return err;

 return ila_add_mapping(net, &p);
}
