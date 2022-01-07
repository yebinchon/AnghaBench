
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {TYPE_1__* sk; } ;
struct sk_security_struct {int sid; int peer_sid; } ;
struct TYPE_2__ {struct sk_security_struct* sk_security; } ;



__attribute__((used)) static int selinux_socket_socketpair(struct socket *socka,
         struct socket *sockb)
{
 struct sk_security_struct *sksec_a = socka->sk->sk_security;
 struct sk_security_struct *sksec_b = sockb->sk->sk_security;

 sksec_a->peer_sid = sksec_b->sid;
 sksec_b->peer_sid = sksec_a->sid;

 return 0;
}
