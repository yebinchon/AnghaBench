
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct request_sock {int dummy; } ;
struct inet_request_sock {int ireq_opt; int ir_rmt_addr; int ir_loc_addr; } ;
struct flowi4 {int dummy; } ;
struct dst_entry {int dummy; } ;
struct dccp_hdr {int dccph_checksum; } ;


 struct dccp_hdr* dccp_hdr (struct sk_buff*) ;
 struct sk_buff* dccp_make_response (struct sock const*,struct dst_entry*,struct request_sock*) ;
 int dccp_v4_csum_finish (struct sk_buff*,int ,int ) ;
 int dst_release (struct dst_entry*) ;
 struct dst_entry* inet_csk_route_req (struct sock const*,struct flowi4*,struct request_sock*) ;
 struct inet_request_sock* inet_rsk (struct request_sock*) ;
 int ip_build_and_send_pkt (struct sk_buff*,struct sock const*,int ,int ,int ) ;
 int net_xmit_eval (int) ;
 int rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int dccp_v4_send_response(const struct sock *sk, struct request_sock *req)
{
 int err = -1;
 struct sk_buff *skb;
 struct dst_entry *dst;
 struct flowi4 fl4;

 dst = inet_csk_route_req(sk, &fl4, req);
 if (dst == ((void*)0))
  goto out;

 skb = dccp_make_response(sk, dst, req);
 if (skb != ((void*)0)) {
  const struct inet_request_sock *ireq = inet_rsk(req);
  struct dccp_hdr *dh = dccp_hdr(skb);

  dh->dccph_checksum = dccp_v4_csum_finish(skb, ireq->ir_loc_addr,
             ireq->ir_rmt_addr);
  rcu_read_lock();
  err = ip_build_and_send_pkt(skb, sk, ireq->ir_loc_addr,
         ireq->ir_rmt_addr,
         rcu_dereference(ireq->ireq_opt));
  rcu_read_unlock();
  err = net_xmit_eval(err);
 }

out:
 dst_release(dst);
 return err;
}
