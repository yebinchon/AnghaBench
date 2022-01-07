
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_smack {struct smack_known* smk_out; } ;
struct sock {int sk_family; struct socket_smack* sk_security; } ;
struct smack_known {int smk_netlabel; } ;


 int SMACK_UNLABELED_SOCKET ;
 int bh_lock_sock_nested (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int netlbl_sock_delattr (struct sock*) ;
 int netlbl_sock_setattr (struct sock*,int ,int *) ;
 struct smack_known* smack_net_ambient ;

__attribute__((used)) static int smack_netlabel(struct sock *sk, int labeled)
{
 struct smack_known *skp;
 struct socket_smack *ssp = sk->sk_security;
 int rc = 0;
 local_bh_disable();
 bh_lock_sock_nested(sk);

 if (ssp->smk_out == smack_net_ambient ||
     labeled == SMACK_UNLABELED_SOCKET)
  netlbl_sock_delattr(sk);
 else {
  skp = ssp->smk_out;
  rc = netlbl_sock_setattr(sk, sk->sk_family, &skp->smk_netlabel);
 }

 bh_unlock_sock(sk);
 local_bh_enable();

 return rc;
}
