
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sock {int (* sk_state_change ) (struct sock*) ;int sk_state; int sk_ack_backlog; } ;
struct rfcomm_session {int dummy; } ;
struct rfcomm_dlc {int dummy; } ;
typedef int bdaddr_t ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {struct rfcomm_dlc* dlc; int channel; int dst; int src; } ;


 int BTPROTO_RFCOMM ;
 int BT_CONFIG ;
 int BT_DBG (char*,int ,...) ;
 int BT_LISTEN ;
 int BT_SK_DEFER_SETUP ;
 int GFP_ATOMIC ;
 int bacpy (int *,int *) ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 int bt_accept_enqueue (struct sock*,struct sock*,int) ;
 TYPE_2__* bt_sk (struct sock*) ;
 int bt_sock_reclassify_lock (struct sock*,int ) ;
 struct sock* rfcomm_get_sock_by_channel (int ,int ,int *) ;
 TYPE_1__* rfcomm_pi (struct sock*) ;
 int rfcomm_session_getaddr (struct rfcomm_session*,int *,int *) ;
 struct sock* rfcomm_sock_alloc (int ,int *,int ,int ,int ) ;
 int rfcomm_sock_init (struct sock*,struct sock*) ;
 scalar_t__ sk_acceptq_is_full (struct sock*) ;
 int sock_net (struct sock*) ;
 int stub1 (struct sock*) ;
 scalar_t__ test_bit (int ,int *) ;

int rfcomm_connect_ind(struct rfcomm_session *s, u8 channel, struct rfcomm_dlc **d)
{
 struct sock *sk, *parent;
 bdaddr_t src, dst;
 int result = 0;

 BT_DBG("session %p channel %d", s, channel);

 rfcomm_session_getaddr(s, &src, &dst);


 parent = rfcomm_get_sock_by_channel(BT_LISTEN, channel, &src);
 if (!parent)
  return 0;

 bh_lock_sock(parent);


 if (sk_acceptq_is_full(parent)) {
  BT_DBG("backlog full %d", parent->sk_ack_backlog);
  goto done;
 }

 sk = rfcomm_sock_alloc(sock_net(parent), ((void*)0), BTPROTO_RFCOMM, GFP_ATOMIC, 0);
 if (!sk)
  goto done;

 bt_sock_reclassify_lock(sk, BTPROTO_RFCOMM);

 rfcomm_sock_init(sk, parent);
 bacpy(&rfcomm_pi(sk)->src, &src);
 bacpy(&rfcomm_pi(sk)->dst, &dst);
 rfcomm_pi(sk)->channel = channel;

 sk->sk_state = BT_CONFIG;
 bt_accept_enqueue(parent, sk, 1);


 *d = rfcomm_pi(sk)->dlc;
 result = 1;

done:
 bh_unlock_sock(parent);

 if (test_bit(BT_SK_DEFER_SETUP, &bt_sk(parent)->flags))
  parent->sk_state_change(parent);

 return result;
}
