
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sock {int sk_rcvbuf; int sk_rmem_alloc; } ;
struct sk_buff {size_t data; scalar_t__ len; } ;
struct sctp_ulpevent {int msg_flags; int tsn; int cumtsn; int flags; void* stream; struct sctp_chunk* chunk; } ;
struct TYPE_11__ {TYPE_4__* data_hdr; } ;
struct sctp_chunk {size_t chunk_end; TYPE_6__* chunk_hdr; TYPE_5__ subh; int transport; struct sk_buff* skb; } ;
struct TYPE_9__ {int tsn_map; } ;
struct TYPE_7__ {struct sock* sk; } ;
struct sctp_association {TYPE_3__ peer; int rmem_alloc; TYPE_2__* ep; TYPE_1__ base; } ;
typedef int gfp_t ;
struct TYPE_12__ {int flags; int length; } ;
struct TYPE_10__ {int tsn; int stream; } ;
struct TYPE_8__ {scalar_t__ rcvbuf_policy; } ;


 int SCTP_DATA_UNORDERED ;
 size_t SCTP_PAD4 (size_t) ;
 int SCTP_UNORDERED ;
 int atomic_read (int *) ;
 int kfree_skb (struct sk_buff*) ;
 int ntohl (int ) ;
 void* ntohs (int ) ;
 int sctp_chunk_hold (struct sctp_chunk*) ;
 struct sctp_ulpevent* sctp_skb2event (struct sk_buff*) ;
 int sctp_tsnmap_get_ctsn (int *) ;
 scalar_t__ sctp_tsnmap_mark (int *,int ,int ) ;
 int sctp_ulpevent_init (struct sctp_ulpevent*,int ,scalar_t__) ;
 int sctp_ulpevent_receive_data (struct sctp_ulpevent*,struct sctp_association*) ;
 int sk_rmem_schedule (struct sock*,struct sk_buff*,size_t) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 int skb_trim (struct sk_buff*,size_t) ;

struct sctp_ulpevent *sctp_ulpevent_make_rcvmsg(struct sctp_association *asoc,
      struct sctp_chunk *chunk,
      gfp_t gfp)
{
 struct sctp_ulpevent *event = ((void*)0);
 struct sk_buff *skb = chunk->skb;
 struct sock *sk = asoc->base.sk;
 size_t padding, datalen;
 int rx_count;






 if (asoc->ep->rcvbuf_policy)
  rx_count = atomic_read(&asoc->rmem_alloc);
 else
  rx_count = atomic_read(&sk->sk_rmem_alloc);

 datalen = ntohs(chunk->chunk_hdr->length);

 if (rx_count >= sk->sk_rcvbuf || !sk_rmem_schedule(sk, skb, datalen))
  goto fail;


 skb = skb_clone(chunk->skb, gfp);
 if (!skb)
  goto fail;




 if (sctp_tsnmap_mark(&asoc->peer.tsn_map,
        ntohl(chunk->subh.data_hdr->tsn),
        chunk->transport))
  goto fail_mark;
 padding = SCTP_PAD4(datalen) - datalen;


 skb_trim(skb, chunk->chunk_end - padding - skb->data);


 event = sctp_skb2event(skb);





 sctp_ulpevent_init(event, 0, skb->len + sizeof(struct sk_buff));




 sctp_chunk_hold(chunk);
 event->chunk = chunk;

 sctp_ulpevent_receive_data(event, asoc);

 event->stream = ntohs(chunk->subh.data_hdr->stream);
 if (chunk->chunk_hdr->flags & SCTP_DATA_UNORDERED) {
  event->flags |= SCTP_UNORDERED;
  event->cumtsn = sctp_tsnmap_get_ctsn(&asoc->peer.tsn_map);
 }
 event->tsn = ntohl(chunk->subh.data_hdr->tsn);
 event->msg_flags |= chunk->chunk_hdr->flags;

 return event;

fail_mark:
 kfree_skb(skb);
fail:
 return ((void*)0);
}
