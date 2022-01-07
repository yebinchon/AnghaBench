
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct tcpnv {int nv_reset; int cwnd_growth_factor; scalar_t__ nv_allow_cwnd_growth; } ;
struct sock {int dummy; } ;


 scalar_t__ TCP_CA_CWR ;
 scalar_t__ TCP_CA_Loss ;
 scalar_t__ TCP_CA_Open ;
 scalar_t__ TCP_CA_Recovery ;
 struct tcpnv* inet_csk_ca (struct sock*) ;
 scalar_t__ nv_cwnd_growth_rate_neg ;
 int tcpnv_reset (struct tcpnv*,struct sock*) ;

__attribute__((used)) static void tcpnv_state(struct sock *sk, u8 new_state)
{
 struct tcpnv *ca = inet_csk_ca(sk);

 if (new_state == TCP_CA_Open && ca->nv_reset) {
  tcpnv_reset(ca, sk);
 } else if (new_state == TCP_CA_Loss || new_state == TCP_CA_CWR ||
  new_state == TCP_CA_Recovery) {
  ca->nv_reset = 1;
  ca->nv_allow_cwnd_growth = 0;
  if (new_state == TCP_CA_Loss) {

   if (ca->cwnd_growth_factor > 0)
    ca->cwnd_growth_factor = 0;

   if (nv_cwnd_growth_rate_neg > 0 &&
       ca->cwnd_growth_factor > -8)
    ca->cwnd_growth_factor--;
  }
 }
}
