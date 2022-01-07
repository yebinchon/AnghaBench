
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {struct sock* sk; } ;
struct packet_type {int (* id_match ) (struct packet_type*,struct sock*) ;scalar_t__ af_packet_priv; } ;


 int stub1 (struct packet_type*,struct sock*) ;

__attribute__((used)) static inline bool skb_loop_sk(struct packet_type *ptype, struct sk_buff *skb)
{
 if (!ptype->af_packet_priv || !skb->sk)
  return 0;

 if (ptype->id_match)
  return ptype->id_match(ptype, skb->sk);
 else if ((struct sock *)ptype->af_packet_priv == skb->sk)
  return 1;

 return 0;
}
