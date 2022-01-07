
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_chunk {int skb; int chunk_end; TYPE_1__* chunk_hdr; } ;
struct TYPE_2__ {int length; } ;


 int htons (int) ;
 int memcpy (void*,void const*,int) ;
 int memset (void*,int ,int) ;
 int ntohs (int ) ;
 void* skb_put (int ,int) ;
 int skb_tail_pointer (int ) ;

__attribute__((used)) static void *sctp_addto_param(struct sctp_chunk *chunk, int len,
         const void *data)
{
 int chunklen = ntohs(chunk->chunk_hdr->length);
 void *target;

 target = skb_put(chunk->skb, len);

 if (data)
  memcpy(target, data, len);
 else
  memset(target, 0, len);


 chunk->chunk_hdr->length = htons(chunklen + len);
 chunk->chunk_end = skb_tail_pointer(chunk->skb);

 return target;
}
