
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct sctp_chunk {struct sk_buff* skb; } ;
struct TYPE_4__ {TYPE_1__* af; } ;
struct TYPE_3__ {int (* skb_iif ) (struct sk_buff*) ;} ;


 TYPE_2__* SCTP_INPUT_CB (struct sk_buff*) ;
 int stub1 (struct sk_buff*) ;

int sctp_chunk_iif(const struct sctp_chunk *chunk)
{
 struct sk_buff *skb = chunk->skb;

 return SCTP_INPUT_CB(skb)->af->skb_iif(skb);
}
