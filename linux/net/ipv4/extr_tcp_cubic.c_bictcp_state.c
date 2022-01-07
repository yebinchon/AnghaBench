
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sock {int dummy; } ;


 scalar_t__ TCP_CA_Loss ;
 int bictcp_hystart_reset (struct sock*) ;
 int bictcp_reset (int ) ;
 int inet_csk_ca (struct sock*) ;

__attribute__((used)) static void bictcp_state(struct sock *sk, u8 new_state)
{
 if (new_state == TCP_CA_Loss) {
  bictcp_reset(inet_csk_ca(sk));
  bictcp_hystart_reset(sk);
 }
}
