
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_msg {int dummy; } ;
struct sock {int sk_write_queue; int sk_timer; } ;
struct tipc_sock {int peer_caps; void* snd_win; void* rcv_win; int portid; int max_pkt; struct tipc_msg phdr; struct sock sk; } ;
struct net {int dummy; } ;


 scalar_t__ CONN_PROBING_INTV ;
 void* FLOWCTL_MSG_WIN ;
 int SHORT_H_SIZE ;
 int TIPC_BLOCK_FLOWCTL ;
 int TIPC_CONN_MSG ;
 int TIPC_ESTABLISHED ;
 int __skb_queue_purge (int *) ;
 scalar_t__ jiffies ;
 int msg_set_destnode (struct tipc_msg*,int ) ;
 int msg_set_destport (struct tipc_msg*,int ) ;
 int msg_set_hdr_sz (struct tipc_msg*,int ) ;
 int msg_set_lookup_scope (struct tipc_msg*,int ) ;
 int msg_set_syn (struct tipc_msg*,int ) ;
 int msg_set_type (struct tipc_msg*,int ) ;
 int sk_reset_timer (struct sock*,int *,scalar_t__) ;
 struct net* sock_net (struct sock*) ;
 int tipc_node_add_conn (struct net*,int ,int ,int ) ;
 int tipc_node_get_capabilities (struct net*,int ) ;
 int tipc_node_get_mtu (struct net*,int ,int ) ;
 int tipc_set_sk_state (struct sock*,int ) ;

__attribute__((used)) static void tipc_sk_finish_conn(struct tipc_sock *tsk, u32 peer_port,
    u32 peer_node)
{
 struct sock *sk = &tsk->sk;
 struct net *net = sock_net(sk);
 struct tipc_msg *msg = &tsk->phdr;

 msg_set_syn(msg, 0);
 msg_set_destnode(msg, peer_node);
 msg_set_destport(msg, peer_port);
 msg_set_type(msg, TIPC_CONN_MSG);
 msg_set_lookup_scope(msg, 0);
 msg_set_hdr_sz(msg, SHORT_H_SIZE);

 sk_reset_timer(sk, &sk->sk_timer, jiffies + CONN_PROBING_INTV);
 tipc_set_sk_state(sk, TIPC_ESTABLISHED);
 tipc_node_add_conn(net, peer_node, tsk->portid, peer_port);
 tsk->max_pkt = tipc_node_get_mtu(net, peer_node, tsk->portid);
 tsk->peer_caps = tipc_node_get_capabilities(net, peer_node);
 __skb_queue_purge(&sk->sk_write_queue);
 if (tsk->peer_caps & TIPC_BLOCK_FLOWCTL)
  return;


 tsk->rcv_win = FLOWCTL_MSG_WIN;
 tsk->snd_win = FLOWCTL_MSG_WIN;
}
