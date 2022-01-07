
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_state; } ;
struct pep_sock {int rx_fc; int rx_credits; } ;
typedef int gfp_t ;


 int BUG_ON (int) ;
 int CREDITS_MAX ;
 int CREDITS_THR ;
 int PEP_IND_READY ;



 int PN_PEP_IND_FLOW_CONTROL ;
 int PN_PEP_IND_ID_MCFC_GRANT_CREDITS ;
 scalar_t__ TCP_ESTABLISHED ;
 struct pep_sock* pep_sk (struct sock*) ;
 int pipe_snd_status (struct sock*,int ,int,int ) ;

__attribute__((used)) static void pipe_grant_credits(struct sock *sk, gfp_t priority)
{
 struct pep_sock *pn = pep_sk(sk);

 BUG_ON(sk->sk_state != TCP_ESTABLISHED);

 switch (pn->rx_fc) {
 case 130:
  break;
 case 128:
  if (pipe_snd_status(sk, PN_PEP_IND_FLOW_CONTROL,
     PEP_IND_READY, priority) == 0)
   pn->rx_credits = 1;
  break;
 case 129:
  if ((pn->rx_credits + CREDITS_THR) > CREDITS_MAX)
   break;
  if (pipe_snd_status(sk, PN_PEP_IND_ID_MCFC_GRANT_CREDITS,
     CREDITS_MAX - pn->rx_credits,
     priority) == 0)
   pn->rx_credits = CREDITS_MAX;
  break;
 }
}
