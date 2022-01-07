
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_sock {struct tipc_group* group; int cong_link_cnt; int cong_links; } ;
struct tipc_msg {int dummy; } ;
struct tipc_group {int dummy; } ;
struct sock {int (* sk_write_space ) (struct sock*) ;int sk_rcvbuf; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;






 struct sk_buff* __skb_dequeue (struct sk_buff_head*) ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int msg_orignode (struct tipc_msg*) ;
 int msg_user (struct tipc_msg*) ;
 int smp_wmb () ;
 int stub1 (struct sock*) ;
 int tipc_dest_del (int *,int ,int ) ;
 int tipc_group_member_evt (struct tipc_group*,int*,int *,struct tipc_msg*,struct sk_buff_head*,struct sk_buff_head*) ;
 int tipc_group_proto_rcv (struct tipc_group*,int*,struct tipc_msg*,struct sk_buff_head*,struct sk_buff_head*) ;
 struct tipc_sock* tipc_sk (struct sock*) ;
 int tipc_sk_conn_proto_rcv (struct tipc_sock*,struct sk_buff*,struct sk_buff_head*,struct sk_buff_head*) ;

__attribute__((used)) static void tipc_sk_proto_rcv(struct sock *sk,
         struct sk_buff_head *inputq,
         struct sk_buff_head *xmitq)
{
 struct sk_buff *skb = __skb_dequeue(inputq);
 struct tipc_sock *tsk = tipc_sk(sk);
 struct tipc_msg *hdr = buf_msg(skb);
 struct tipc_group *grp = tsk->group;
 bool wakeup = 0;

 switch (msg_user(hdr)) {
 case 131:
  tipc_sk_conn_proto_rcv(tsk, skb, inputq, xmitq);
  return;
 case 129:
  tipc_dest_del(&tsk->cong_links, msg_orignode(hdr), 0);

  smp_wmb();
  tsk->cong_link_cnt--;
  wakeup = 1;
  break;
 case 130:
  tipc_group_proto_rcv(grp, &wakeup, hdr, inputq, xmitq);
  break;
 case 128:
  tipc_group_member_evt(tsk->group, &wakeup, &sk->sk_rcvbuf,
          hdr, inputq, xmitq);
  break;
 default:
  break;
 }

 if (wakeup)
  sk->sk_write_space(sk);

 kfree_skb(skb);
}
