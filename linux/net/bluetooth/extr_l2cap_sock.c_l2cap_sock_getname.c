
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sockaddr_l2 {int l2_bdaddr_type; void* l2_cid; int l2_bdaddr; int l2_psm; } ;
struct sockaddr {int sa_family; } ;
struct sock {scalar_t__ sk_state; } ;
struct l2cap_chan {int src_type; int scid; int src; int dst_type; int dcid; int dst; int psm; } ;
struct TYPE_2__ {struct l2cap_chan* chan; } ;


 int AF_BLUETOOTH ;
 scalar_t__ BT_CONFIG ;
 scalar_t__ BT_CONNECT ;
 scalar_t__ BT_CONNECT2 ;
 scalar_t__ BT_CONNECTED ;
 int BT_DBG (char*,struct socket*,struct sock*) ;
 int ENOTCONN ;
 int bacpy (int *,int *) ;
 void* cpu_to_le16 (int ) ;
 TYPE_1__* l2cap_pi (struct sock*) ;
 int memset (struct sockaddr_l2*,int ,int) ;

__attribute__((used)) static int l2cap_sock_getname(struct socket *sock, struct sockaddr *addr,
         int peer)
{
 struct sockaddr_l2 *la = (struct sockaddr_l2 *) addr;
 struct sock *sk = sock->sk;
 struct l2cap_chan *chan = l2cap_pi(sk)->chan;

 BT_DBG("sock %p, sk %p", sock, sk);

 if (peer && sk->sk_state != BT_CONNECTED &&
     sk->sk_state != BT_CONNECT && sk->sk_state != BT_CONNECT2 &&
     sk->sk_state != BT_CONFIG)
  return -ENOTCONN;

 memset(la, 0, sizeof(struct sockaddr_l2));
 addr->sa_family = AF_BLUETOOTH;

 la->l2_psm = chan->psm;

 if (peer) {
  bacpy(&la->l2_bdaddr, &chan->dst);
  la->l2_cid = cpu_to_le16(chan->dcid);
  la->l2_bdaddr_type = chan->dst_type;
 } else {
  bacpy(&la->l2_bdaddr, &chan->src);
  la->l2_cid = cpu_to_le16(chan->scid);
  la->l2_bdaddr_type = chan->src_type;
 }

 return sizeof(struct sockaddr_l2);
}
