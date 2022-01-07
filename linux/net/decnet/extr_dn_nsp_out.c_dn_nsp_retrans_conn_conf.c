
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct dn_scp {scalar_t__ state; } ;


 scalar_t__ DN_CC ;
 struct dn_scp* DN_SK (struct sock*) ;
 int GFP_ATOMIC ;
 int dn_send_conn_conf (struct sock*,int ) ;

__attribute__((used)) static int dn_nsp_retrans_conn_conf(struct sock *sk)
{
 struct dn_scp *scp = DN_SK(sk);

 if (scp->state == DN_CC)
  dn_send_conn_conf(sk, GFP_ATOMIC);

 return 0;
}
