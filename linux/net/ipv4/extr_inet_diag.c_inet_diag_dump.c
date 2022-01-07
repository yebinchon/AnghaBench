
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_callback {int nlh; } ;
struct inet_diag_req_v2 {int dummy; } ;


 int INET_DIAG_REQ_BYTECODE ;
 int __inet_diag_dump (struct sk_buff*,struct netlink_callback*,int ,struct nlattr*) ;
 scalar_t__ nlmsg_attrlen (int ,int) ;
 int nlmsg_data (int ) ;
 struct nlattr* nlmsg_find_attr (int ,int,int ) ;

__attribute__((used)) static int inet_diag_dump(struct sk_buff *skb, struct netlink_callback *cb)
{
 int hdrlen = sizeof(struct inet_diag_req_v2);
 struct nlattr *bc = ((void*)0);

 if (nlmsg_attrlen(cb->nlh, hdrlen))
  bc = nlmsg_find_attr(cb->nlh, hdrlen, INET_DIAG_REQ_BYTECODE);

 return __inet_diag_dump(skb, cb, nlmsg_data(cb->nlh), bc);
}
