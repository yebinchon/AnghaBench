
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int sk; } ;
struct sctp_comm_param {int net_admin; struct inet_diag_req_v2 const* r; struct netlink_callback* cb; struct sk_buff* skb; } ;
struct nlattr {int dummy; } ;
struct netlink_callback {int* args; int skb; } ;
struct net {int dummy; } ;
struct inet_diag_req_v2 {int idiag_states; } ;


 int CAP_NET_ADMIN ;
 int TCPF_CLOSE ;
 int TCPF_LISTEN ;
 int netlink_net_capable (int ,int ) ;
 int sctp_ep_dump ;
 scalar_t__ sctp_for_each_endpoint (int ,struct sctp_comm_param*) ;
 int sctp_for_each_transport (int ,int ,struct net*,int*,struct sctp_comm_param*) ;
 int sctp_sock_dump ;
 int sctp_sock_filter ;
 struct net* sock_net (int ) ;

__attribute__((used)) static void sctp_diag_dump(struct sk_buff *skb, struct netlink_callback *cb,
      const struct inet_diag_req_v2 *r, struct nlattr *bc)
{
 u32 idiag_states = r->idiag_states;
 struct net *net = sock_net(skb->sk);
 struct sctp_comm_param commp = {
  .skb = skb,
  .cb = cb,
  .r = r,
  .net_admin = netlink_net_capable(cb->skb, CAP_NET_ADMIN),
 };
 int pos = cb->args[2];







 if (cb->args[0] == 0) {
  if (!(idiag_states & TCPF_LISTEN))
   goto skip;
  if (sctp_for_each_endpoint(sctp_ep_dump, &commp))
   goto done;
skip:
  cb->args[0] = 1;
  cb->args[1] = 0;
  cb->args[4] = 0;
 }
 if (!(idiag_states & ~(TCPF_LISTEN | TCPF_CLOSE)))
  goto done;

 sctp_for_each_transport(sctp_sock_filter, sctp_sock_dump,
    net, &pos, &commp);
 cb->args[2] = pos;

done:
 cb->args[1] = cb->args[4];
 cb->args[4] = 0;
}
