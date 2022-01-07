
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;


 int tunnel_key_copy_opts (struct nlattr*,int *,int ,struct netlink_ext_ack*) ;

__attribute__((used)) static int tunnel_key_get_opts_len(struct nlattr *nla,
       struct netlink_ext_ack *extack)
{
 return tunnel_key_copy_opts(nla, ((void*)0), 0, extack);
}
