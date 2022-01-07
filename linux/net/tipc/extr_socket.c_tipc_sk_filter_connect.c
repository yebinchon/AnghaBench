
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sock {int sk_state; int (* sk_state_change ) (struct sock*) ;int sk_err; int sk_timer; int sk_write_queue; } ;
struct tipc_sock {int conn_timeout; int portid; int phdr; struct sock sk; } ;
struct tipc_msg {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;


 int ECONNREFUSED ;


 int TIPC_ERR_OVERLOAD ;



 int TIPC_SYN_BIT ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 int get_random_bytes (unsigned long*,int) ;
 int jiffies ;
 int likely (int) ;
 unsigned long msecs_to_jiffies (unsigned long) ;
 int msg_connected (struct tipc_msg*) ;
 int msg_data_sz (struct tipc_msg*) ;
 int msg_errcode (struct tipc_msg*) ;
 int msg_importance (struct tipc_msg*) ;
 int msg_is_syn (struct tipc_msg*) ;
 int msg_mcast (struct tipc_msg*) ;
 int msg_orignode (struct tipc_msg*) ;
 int msg_origport (struct tipc_msg*) ;
 int msg_set_dest_droppable (struct tipc_msg*,int) ;
 int msg_set_importance (int *,int ) ;
 int pr_err (char*,int) ;
 int sk_reset_timer (struct sock*,int *,int ) ;
 int skb_queue_empty (int *) ;
 struct net* sock_net (struct sock*) ;
 int stub1 (struct sock*) ;
 int stub2 (struct sock*) ;
 int stub3 (struct sock*) ;
 int tipc_node_get_capabilities (struct net*,int ) ;
 int tipc_node_remove_conn (struct net*,int ,int ) ;
 int tipc_set_sk_state (struct sock*,int const) ;
 int tipc_sk_finish_conn (struct tipc_sock*,int ,int ) ;
 int tsk_peer_msg (struct tipc_sock*,struct tipc_msg*) ;
 int tsk_peer_node (struct tipc_sock*) ;
 int tsk_peer_port (struct tipc_sock*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static bool tipc_sk_filter_connect(struct tipc_sock *tsk, struct sk_buff *skb)
{
 struct sock *sk = &tsk->sk;
 struct net *net = sock_net(sk);
 struct tipc_msg *hdr = buf_msg(skb);
 bool con_msg = msg_connected(hdr);
 u32 pport = tsk_peer_port(tsk);
 u32 pnode = tsk_peer_node(tsk);
 u32 oport = msg_origport(hdr);
 u32 onode = msg_orignode(hdr);
 int err = msg_errcode(hdr);
 unsigned long delay;

 if (unlikely(msg_mcast(hdr)))
  return 0;

 switch (sk->sk_state) {
 case 132:

  if (likely(con_msg)) {
   if (err)
    break;
   tipc_sk_finish_conn(tsk, oport, onode);
   msg_set_importance(&tsk->phdr, msg_importance(hdr));

   if (msg_data_sz(hdr))
    return 1;

   sk->sk_state_change(sk);
   msg_set_dest_droppable(hdr, 1);
   return 0;
  }

  if (oport != pport || onode != pnode)
   return 0;


  if (err != TIPC_ERR_OVERLOAD)
   break;


  if (skb_queue_empty(&sk->sk_write_queue))
   break;
  get_random_bytes(&delay, 2);
  delay %= (tsk->conn_timeout / 4);
  delay = msecs_to_jiffies(delay + 100);
  sk_reset_timer(sk, &sk->sk_timer, jiffies + delay);
  return 0;
 case 128:
 case 131:
  return 0;
 case 129:

  if (!msg_is_syn(hdr) &&
      tipc_node_get_capabilities(net, onode) & TIPC_SYN_BIT)
   return 0;
  if (!con_msg && !err)
   return 1;
  return 0;
 case 130:

  if (likely(con_msg && !err && pport == oport && pnode == onode))
   return 1;
  if (!tsk_peer_msg(tsk, hdr))
   return 0;
  if (!err)
   return 1;
  tipc_set_sk_state(sk, 131);
  tipc_node_remove_conn(net, pnode, tsk->portid);
  sk->sk_state_change(sk);
  return 1;
 default:
  pr_err("Unknown sk_state %u\n", sk->sk_state);
 }

 tipc_set_sk_state(sk, 131);
 sk->sk_err = ECONNREFUSED;
 sk->sk_state_change(sk);
 return 1;
}
