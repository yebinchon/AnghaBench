
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int (* sk_write_space ) (struct sock*) ;} ;
struct pep_sock {int tx_credits; int tx_fc; } ;


 int GFP_ATOMIC ;
 int atomic_set (int *,int) ;
 struct pep_sock* pep_sk (struct sock*) ;
 int pipe_grant_credits (struct sock*,int ) ;
 int pn_flow_safe (int ) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static void pipe_start_flow_control(struct sock *sk)
{
 struct pep_sock *pn = pep_sk(sk);

 if (!pn_flow_safe(pn->tx_fc)) {
  atomic_set(&pn->tx_credits, 1);
  sk->sk_write_space(sk);
 }
 pipe_grant_credits(sk, GFP_ATOMIC);
}
