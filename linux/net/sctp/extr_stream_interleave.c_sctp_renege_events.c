
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sctp_ulpq {int reasm_uo; int reasm; int lobby; struct sctp_association* asoc; } ;
struct sctp_idata_chunk {int dummy; } ;
struct sctp_chunk {TYPE_1__* chunk_hdr; } ;
struct TYPE_5__ {TYPE_3__* sk; } ;
struct sctp_association {TYPE_2__ base; } ;
typedef int gfp_t ;
typedef scalar_t__ __u32 ;
typedef scalar_t__ __u16 ;
struct TYPE_6__ {int sk_receive_queue; } ;
struct TYPE_4__ {int length; } ;


 scalar_t__ ntohs (int ) ;
 int sctp_intl_start_pd (struct sctp_ulpq*,int ) ;
 scalar_t__ sctp_ulpevent_idata (struct sctp_ulpq*,struct sctp_chunk*,int ) ;
 scalar_t__ sctp_ulpq_renege_list (struct sctp_ulpq*,int *,scalar_t__) ;
 int sk_mem_reclaim (TYPE_3__*) ;
 scalar_t__ skb_queue_empty (int *) ;

__attribute__((used)) static void sctp_renege_events(struct sctp_ulpq *ulpq, struct sctp_chunk *chunk,
          gfp_t gfp)
{
 struct sctp_association *asoc = ulpq->asoc;
 __u32 freed = 0;
 __u16 needed;

 needed = ntohs(chunk->chunk_hdr->length) -
   sizeof(struct sctp_idata_chunk);

 if (skb_queue_empty(&asoc->base.sk->sk_receive_queue)) {
  freed = sctp_ulpq_renege_list(ulpq, &ulpq->lobby, needed);
  if (freed < needed)
   freed += sctp_ulpq_renege_list(ulpq, &ulpq->reasm,
             needed);
  if (freed < needed)
   freed += sctp_ulpq_renege_list(ulpq, &ulpq->reasm_uo,
             needed);
 }

 if (freed >= needed && sctp_ulpevent_idata(ulpq, chunk, gfp) <= 0)
  sctp_intl_start_pd(ulpq, gfp);

 sk_mem_reclaim(asoc->base.sk);
}
