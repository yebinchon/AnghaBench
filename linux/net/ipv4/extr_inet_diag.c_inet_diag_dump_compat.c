
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_callback {TYPE_1__* nlh; } ;
struct inet_diag_req_v2 {int id; int idiag_states; int idiag_ext; int sdiag_protocol; int sdiag_family; } ;
struct inet_diag_req {int id; int idiag_states; int idiag_ext; } ;
struct TYPE_4__ {int nlmsg_type; } ;


 int AF_UNSPEC ;
 int INET_DIAG_REQ_BYTECODE ;
 int __inet_diag_dump (struct sk_buff*,struct netlink_callback*,struct inet_diag_req_v2*,struct nlattr*) ;
 int inet_diag_type2proto (int ) ;
 scalar_t__ nlmsg_attrlen (TYPE_1__*,int) ;
 struct inet_diag_req* nlmsg_data (TYPE_1__*) ;
 struct nlattr* nlmsg_find_attr (TYPE_1__*,int,int ) ;

__attribute__((used)) static int inet_diag_dump_compat(struct sk_buff *skb,
     struct netlink_callback *cb)
{
 struct inet_diag_req *rc = nlmsg_data(cb->nlh);
 int hdrlen = sizeof(struct inet_diag_req);
 struct inet_diag_req_v2 req;
 struct nlattr *bc = ((void*)0);

 req.sdiag_family = AF_UNSPEC;
 req.sdiag_protocol = inet_diag_type2proto(cb->nlh->nlmsg_type);
 req.idiag_ext = rc->idiag_ext;
 req.idiag_states = rc->idiag_states;
 req.id = rc->id;

 if (nlmsg_attrlen(cb->nlh, hdrlen))
  bc = nlmsg_find_attr(cb->nlh, hdrlen, INET_DIAG_REQ_BYTECODE);

 return __inet_diag_dump(skb, cb, &req, bc);
}
