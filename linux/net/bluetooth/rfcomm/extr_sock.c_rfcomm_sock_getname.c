
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sockaddr_rc {int rc_bdaddr; int rc_channel; int rc_family; } ;
struct sockaddr {int dummy; } ;
struct sock {scalar_t__ sk_state; } ;
struct TYPE_2__ {int src; int dst; int channel; } ;


 int AF_BLUETOOTH ;
 scalar_t__ BT_CONNECT ;
 scalar_t__ BT_CONNECT2 ;
 scalar_t__ BT_CONNECTED ;
 int BT_DBG (char*,struct socket*,struct sock*) ;
 int ENOTCONN ;
 int bacpy (int *,int *) ;
 int memset (struct sockaddr_rc*,int ,int) ;
 TYPE_1__* rfcomm_pi (struct sock*) ;

__attribute__((used)) static int rfcomm_sock_getname(struct socket *sock, struct sockaddr *addr, int peer)
{
 struct sockaddr_rc *sa = (struct sockaddr_rc *) addr;
 struct sock *sk = sock->sk;

 BT_DBG("sock %p, sk %p", sock, sk);

 if (peer && sk->sk_state != BT_CONNECTED &&
     sk->sk_state != BT_CONNECT && sk->sk_state != BT_CONNECT2)
  return -ENOTCONN;

 memset(sa, 0, sizeof(*sa));
 sa->rc_family = AF_BLUETOOTH;
 sa->rc_channel = rfcomm_pi(sk)->channel;
 if (peer)
  bacpy(&sa->rc_bdaddr, &rfcomm_pi(sk)->dst);
 else
  bacpy(&sa->rc_bdaddr, &rfcomm_pi(sk)->src);

 return sizeof(struct sockaddr_rc);
}
