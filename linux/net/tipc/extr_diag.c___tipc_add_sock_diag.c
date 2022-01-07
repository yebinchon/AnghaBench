
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_sock_diag_req {int tidiag_states; } ;
struct tipc_sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct netlink_callback {int nlh; } ;


 int EMSGSIZE ;
 int NLM_F_MULTI ;
 int SOCK_DIAG_BY_FAMILY ;
 int __tipc_diag_gen_cookie ;
 struct tipc_sock_diag_req* nlmsg_data (int ) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put_answer (struct sk_buff*,struct netlink_callback*,int ,int ,int ) ;
 int tipc_sk_fill_sock_diag (struct sk_buff*,struct netlink_callback*,struct tipc_sock*,int ,int ) ;

__attribute__((used)) static int __tipc_add_sock_diag(struct sk_buff *skb,
    struct netlink_callback *cb,
    struct tipc_sock *tsk)
{
 struct tipc_sock_diag_req *req = nlmsg_data(cb->nlh);
 struct nlmsghdr *nlh;
 int err;

 nlh = nlmsg_put_answer(skb, cb, SOCK_DIAG_BY_FAMILY, 0,
          NLM_F_MULTI);
 if (!nlh)
  return -EMSGSIZE;

 err = tipc_sk_fill_sock_diag(skb, cb, tsk, req->tidiag_states,
         __tipc_diag_gen_cookie);
 if (err)
  return err;

 nlmsg_end(skb, nlh);
 return 0;
}
