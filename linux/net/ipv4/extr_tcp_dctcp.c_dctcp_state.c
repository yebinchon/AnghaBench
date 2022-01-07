
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct sock {int dummy; } ;
struct TYPE_2__ {scalar_t__ icsk_ca_state; } ;


 scalar_t__ TCP_CA_Recovery ;
 int dctcp_react_to_loss (struct sock*) ;
 TYPE_1__* inet_csk (struct sock*) ;

__attribute__((used)) static void dctcp_state(struct sock *sk, u8 new_state)
{
 if (new_state == TCP_CA_Recovery &&
     new_state != inet_csk(sk)->icsk_ca_state)
  dctcp_react_to_loss(sk);



}
