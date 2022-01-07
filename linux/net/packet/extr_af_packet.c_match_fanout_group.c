
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {scalar_t__ sk_family; } ;
struct packet_type {scalar_t__ af_packet_priv; } ;
struct TYPE_2__ {scalar_t__ fanout; } ;


 scalar_t__ PF_PACKET ;
 TYPE_1__* pkt_sk (struct sock*) ;

__attribute__((used)) static bool match_fanout_group(struct packet_type *ptype, struct sock *sk)
{
 if (sk->sk_family != PF_PACKET)
  return 0;

 return ptype->af_packet_priv == pkt_sk(sk)->fanout;
}
