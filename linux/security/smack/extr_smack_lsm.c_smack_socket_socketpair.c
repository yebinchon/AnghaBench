
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket_smack {int smk_out; int smk_packet; } ;
struct socket {TYPE_1__* sk; } ;
struct TYPE_2__ {struct socket_smack* sk_security; } ;



__attribute__((used)) static int smack_socket_socketpair(struct socket *socka,
                     struct socket *sockb)
{
 struct socket_smack *asp = socka->sk->sk_security;
 struct socket_smack *bsp = sockb->sk->sk_security;

 asp->smk_packet = bsp->smk_out;
 bsp->smk_packet = asp->smk_out;

 return 0;
}
