
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct dccp_sock {int * dccps_hc_tx_ccid; } ;


 int ccid_hc_tx_delete (int *,struct sock*) ;
 struct dccp_sock* dccp_sk (struct sock*) ;
 int inet_sock_destruct (struct sock*) ;

__attribute__((used)) static void dccp_sk_destruct(struct sock *sk)
{
 struct dccp_sock *dp = dccp_sk(sk);

 ccid_hc_tx_delete(dp->dccps_hc_tx_ccid, sk);
 dp->dccps_hc_tx_ccid = ((void*)0);
 inet_sock_destruct(sk);
}
