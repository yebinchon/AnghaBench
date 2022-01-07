
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_chunk {int skb; int chunk_end; TYPE_1__* chunk_hdr; } ;
struct TYPE_2__ {int length; } ;


 int SCTP_PAD4 (int) ;
 int htons (int) ;
 int ntohs (int ) ;
 void* skb_put_data (int ,void const*,int) ;
 int skb_put_zero (int ,int) ;
 int skb_tail_pointer (int ) ;

void *sctp_addto_chunk(struct sctp_chunk *chunk, int len, const void *data)
{
 int chunklen = ntohs(chunk->chunk_hdr->length);
 int padlen = SCTP_PAD4(chunklen) - chunklen;
 void *target;

 skb_put_zero(chunk->skb, padlen);
 target = skb_put_data(chunk->skb, data, len);


 chunk->chunk_hdr->length = htons(chunklen + padlen + len);
 chunk->chunk_end = skb_tail_pointer(chunk->skb);

 return target;
}
