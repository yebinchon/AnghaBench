
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_sackhdr {int num_dup_tsns; int num_gap_ack_blocks; } ;
struct sctp_chunk {TYPE_1__* skb; } ;
typedef int __u32 ;
typedef int __u16 ;
struct TYPE_2__ {unsigned int len; scalar_t__ data; } ;


 int ntohs (int ) ;
 int skb_pull (TYPE_1__*,unsigned int) ;

__attribute__((used)) static struct sctp_sackhdr *sctp_sm_pull_sack(struct sctp_chunk *chunk)
{
 struct sctp_sackhdr *sack;
 __u16 num_dup_tsns;
 unsigned int len;
 __u16 num_blocks;




 sack = (struct sctp_sackhdr *) chunk->skb->data;

 num_blocks = ntohs(sack->num_gap_ack_blocks);
 num_dup_tsns = ntohs(sack->num_dup_tsns);
 len = sizeof(struct sctp_sackhdr);
 len += (num_blocks + num_dup_tsns) * sizeof(__u32);
 if (len > chunk->skb->len)
  return ((void*)0);

 skb_pull(chunk->skb, len);

 return sack;
}
