
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_type; } ;
struct inet_diag_req_v2 {int id; int idiag_states; int idiag_ext; int sdiag_protocol; int sdiag_family; } ;
struct inet_diag_req {int id; int idiag_states; int idiag_ext; int idiag_family; } ;


 int SOCK_DIAG_BY_FAMILY ;
 int inet_diag_cmd_exact (int ,struct sk_buff*,struct nlmsghdr const*,struct inet_diag_req_v2*) ;
 int inet_diag_type2proto (int ) ;
 struct inet_diag_req* nlmsg_data (struct nlmsghdr const*) ;

__attribute__((used)) static int inet_diag_get_exact_compat(struct sk_buff *in_skb,
          const struct nlmsghdr *nlh)
{
 struct inet_diag_req *rc = nlmsg_data(nlh);
 struct inet_diag_req_v2 req;

 req.sdiag_family = rc->idiag_family;
 req.sdiag_protocol = inet_diag_type2proto(nlh->nlmsg_type);
 req.idiag_ext = rc->idiag_ext;
 req.idiag_states = rc->idiag_states;
 req.id = rc->id;

 return inet_diag_cmd_exact(SOCK_DIAG_BY_FAMILY, in_skb, nlh, &req);
}
