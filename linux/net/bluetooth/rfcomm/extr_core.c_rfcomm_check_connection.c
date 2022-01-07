
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sock {int sk_state; int sk_err; } ;
struct rfcomm_session {int mtu; int state; TYPE_2__* sock; } ;
struct TYPE_6__ {TYPE_1__* chan; } ;
struct TYPE_5__ {struct sock* sk; } ;
struct TYPE_4__ {int imtu; int omtu; } ;



 int BT_CONNECT ;

 int BT_DBG (char*,struct rfcomm_session*,int ) ;
 TYPE_3__* l2cap_pi (struct sock*) ;
 int min (int ,int ) ;
 int rfcomm_send_sabm (struct rfcomm_session*,int ) ;
 struct rfcomm_session* rfcomm_session_close (struct rfcomm_session*,int ) ;

__attribute__((used)) static struct rfcomm_session *rfcomm_check_connection(struct rfcomm_session *s)
{
 struct sock *sk = s->sock->sk;

 BT_DBG("%p state %ld", s, s->state);

 switch (sk->sk_state) {
 case 128:
  s->state = BT_CONNECT;



  s->mtu = min(l2cap_pi(sk)->chan->omtu, l2cap_pi(sk)->chan->imtu) - 5;

  rfcomm_send_sabm(s, 0);
  break;

 case 129:
  s = rfcomm_session_close(s, sk->sk_err);
  break;
 }
 return s;
}
