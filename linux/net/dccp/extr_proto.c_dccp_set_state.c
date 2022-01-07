
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sock {int sk_state; int sk_userlocks; TYPE_1__* sk_prot; } ;
struct TYPE_6__ {int dccps_featneg; } ;
struct TYPE_5__ {int * icsk_bind_hash; } ;
struct TYPE_4__ {int (* unhash ) (struct sock*) ;} ;


 int const DCCP_ACTIVE_CLOSEREQ ;

 int const DCCP_CLOSING ;
 int DCCP_DEC_STATS (int ) ;
 int DCCP_INC_STATS (int ) ;
 int DCCP_MIB_CURRESTAB ;
 int DCCP_MIB_ESTABRESETS ;

 int const DCCP_PARTOPEN ;
 int SOCK_BINDPORT_LOCK ;
 int WARN_ON (int) ;
 int dccp_feat_list_purge (int *) ;
 int dccp_pr_debug (char*,int ,struct sock*,int ,int ) ;
 int dccp_role (struct sock*) ;
 TYPE_3__* dccp_sk (struct sock*) ;
 int dccp_state_name (int const) ;
 TYPE_2__* inet_csk (struct sock*) ;
 int inet_put_port (struct sock*) ;
 int inet_sk_set_state (struct sock*,int const) ;
 int stub1 (struct sock*) ;

void dccp_set_state(struct sock *sk, const int state)
{
 const int oldstate = sk->sk_state;

 dccp_pr_debug("%s(%p)  %s  -->  %s\n", dccp_role(sk), sk,
        dccp_state_name(oldstate), dccp_state_name(state));
 WARN_ON(state == oldstate);

 switch (state) {
 case 128:
  if (oldstate != 128)
   DCCP_INC_STATS(DCCP_MIB_CURRESTAB);

  if (oldstate == DCCP_PARTOPEN)
   dccp_feat_list_purge(&dccp_sk(sk)->dccps_featneg);
  break;

 case 129:
  if (oldstate == 128 || oldstate == DCCP_ACTIVE_CLOSEREQ ||
      oldstate == DCCP_CLOSING)
   DCCP_INC_STATS(DCCP_MIB_ESTABRESETS);

  sk->sk_prot->unhash(sk);
  if (inet_csk(sk)->icsk_bind_hash != ((void*)0) &&
      !(sk->sk_userlocks & SOCK_BINDPORT_LOCK))
   inet_put_port(sk);

 default:
  if (oldstate == 128)
   DCCP_DEC_STATS(DCCP_MIB_CURRESTAB);
 }




 inet_sk_set_state(sk, state);
}
