
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_chunk {int skb; int chunk_end; TYPE_1__* chunk_hdr; } ;
struct iov_iter {int dummy; } ;
struct TYPE_2__ {int length; } ;


 int EFAULT ;
 int copy_from_iter_full (void*,int,struct iov_iter*) ;
 int htons (scalar_t__) ;
 scalar_t__ ntohs (int ) ;
 void* skb_put (int ,int) ;
 int skb_tail_pointer (int ) ;

int sctp_user_addto_chunk(struct sctp_chunk *chunk, int len,
     struct iov_iter *from)
{
 void *target;


 target = skb_put(chunk->skb, len);


 if (!copy_from_iter_full(target, len, from))
  return -EFAULT;


 chunk->chunk_hdr->length =
  htons(ntohs(chunk->chunk_hdr->length) + len);
 chunk->chunk_end = skb_tail_pointer(chunk->skb);

 return 0;
}
