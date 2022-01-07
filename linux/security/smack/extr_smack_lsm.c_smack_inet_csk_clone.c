
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_smack {struct smack_known* smk_packet; } ;
struct sock {struct socket_smack* sk_security; } ;
struct smack_known {int dummy; } ;
struct request_sock {scalar_t__ peer_secid; } ;


 struct smack_known* smack_from_secid (scalar_t__) ;

__attribute__((used)) static void smack_inet_csk_clone(struct sock *sk,
     const struct request_sock *req)
{
 struct socket_smack *ssp = sk->sk_security;
 struct smack_known *skp;

 if (req->peer_secid != 0) {
  skp = smack_from_secid(req->peer_secid);
  ssp->smk_packet = skp;
 } else
  ssp->smk_packet = ((void*)0);
}
