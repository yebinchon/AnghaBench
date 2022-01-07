
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sock {int dummy; } ;


 scalar_t__ TCP_CA_Open ;
 int veno_disable (struct sock*) ;
 int veno_enable (struct sock*) ;

__attribute__((used)) static void tcp_veno_state(struct sock *sk, u8 ca_state)
{
 if (ca_state == TCP_CA_Open)
  veno_enable(sk);
 else
  veno_disable(sk);
}
