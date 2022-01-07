
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct genl_info {int dummy; } ;
struct fou_cfg {int dummy; } ;


 int fou_create (struct net*,struct fou_cfg*,int *) ;
 struct net* genl_info_net (struct genl_info*) ;
 int parse_nl_config (struct genl_info*,struct fou_cfg*) ;

__attribute__((used)) static int fou_nl_cmd_add_port(struct sk_buff *skb, struct genl_info *info)
{
 struct net *net = genl_info_net(info);
 struct fou_cfg cfg;
 int err;

 err = parse_nl_config(info, &cfg);
 if (err)
  return err;

 return fou_create(net, &cfg, ((void*)0));
}
