
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sctp_ulpq {struct sctp_association* asoc; } ;
struct sctp_data_chunk {int dummy; } ;
struct sctp_chunk {int skb; TYPE_1__* chunk_hdr; } ;
struct TYPE_6__ {TYPE_3__* sk; } ;
struct sctp_association {TYPE_2__ base; } ;
typedef int gfp_t ;
typedef scalar_t__ __u32 ;
typedef scalar_t__ __u16 ;
struct TYPE_7__ {int sk_receive_queue; } ;
struct TYPE_5__ {int length; } ;


 scalar_t__ ntohs (int ) ;
 int sctp_ulpq_partial_delivery (struct sctp_ulpq*,int ) ;
 int sctp_ulpq_reasm_drain (struct sctp_ulpq*) ;
 scalar_t__ sctp_ulpq_renege_frags (struct sctp_ulpq*,scalar_t__) ;
 scalar_t__ sctp_ulpq_renege_order (struct sctp_ulpq*,scalar_t__) ;
 int sctp_ulpq_tail_data (struct sctp_ulpq*,struct sctp_chunk*,int ) ;
 int sk_mem_reclaim (TYPE_3__*) ;
 scalar_t__ sk_rmem_schedule (TYPE_3__*,int ,scalar_t__) ;
 scalar_t__ skb_queue_empty (int *) ;

void sctp_ulpq_renege(struct sctp_ulpq *ulpq, struct sctp_chunk *chunk,
        gfp_t gfp)
{
 struct sctp_association *asoc = ulpq->asoc;
 __u32 freed = 0;
 __u16 needed;

 needed = ntohs(chunk->chunk_hdr->length) -
   sizeof(struct sctp_data_chunk);

 if (skb_queue_empty(&asoc->base.sk->sk_receive_queue)) {
  freed = sctp_ulpq_renege_order(ulpq, needed);
  if (freed < needed)
   freed += sctp_ulpq_renege_frags(ulpq, needed - freed);
 }

 if (sk_rmem_schedule(asoc->base.sk, chunk->skb, needed) &&
     freed >= needed) {
  int retval = sctp_ulpq_tail_data(ulpq, chunk, gfp);




  if (retval <= 0)
   sctp_ulpq_partial_delivery(ulpq, gfp);
  else if (retval == 1)
   sctp_ulpq_reasm_drain(ulpq);
 }

 sk_mem_reclaim(asoc->base.sk);
}
