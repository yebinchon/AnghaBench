
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t u16 ;
struct sctp_packet {size_t size; int ipfragok; size_t overhead; size_t max_size; TYPE_5__* transport; scalar_t__ has_data; TYPE_4__* auth; } ;
struct sctp_chunk {scalar_t__ shkey; scalar_t__ auth; TYPE_1__* chunk_hdr; } ;
typedef enum sctp_xmit { ____Placeholder_sctp_xmit } sctp_xmit ;
struct TYPE_10__ {size_t pathmtu; int burst_limited; int cwnd; TYPE_2__* asoc; } ;
struct TYPE_9__ {scalar_t__ shkey; TYPE_3__* skb; } ;
struct TYPE_8__ {int len; } ;
struct TYPE_7__ {size_t pathmtu; } ;
struct TYPE_6__ {scalar_t__ type; } ;


 scalar_t__ SCTP_CID_AUTH ;
 scalar_t__ SCTP_PAD4 (int ) ;
 int SCTP_XMIT_OK ;
 int SCTP_XMIT_PMTU_FULL ;
 int sctp_chunk_is_data (struct sctp_chunk*) ;
 scalar_t__ sctp_packet_empty (struct sctp_packet*) ;

__attribute__((used)) static enum sctp_xmit sctp_packet_will_fit(struct sctp_packet *packet,
        struct sctp_chunk *chunk,
        u16 chunk_len)
{
 enum sctp_xmit retval = SCTP_XMIT_OK;
 size_t psize, pmtu, maxsize;






 if ((packet->auth && chunk->shkey != packet->auth->shkey) ||
     (!packet->auth && chunk->shkey &&
      chunk->chunk_hdr->type != SCTP_CID_AUTH))
  return SCTP_XMIT_PMTU_FULL;

 psize = packet->size;
 if (packet->transport->asoc)
  pmtu = packet->transport->asoc->pathmtu;
 else
  pmtu = packet->transport->pathmtu;


 if (psize + chunk_len > pmtu) {







  if (sctp_packet_empty(packet) ||
      (!packet->has_data && chunk->auth)) {




   packet->ipfragok = 1;
   goto out;
  }






  maxsize = pmtu - packet->overhead;
  if (packet->auth)
   maxsize -= SCTP_PAD4(packet->auth->skb->len);
  if (chunk_len > maxsize)
   retval = SCTP_XMIT_PMTU_FULL;







  if (!sctp_chunk_is_data(chunk) && packet->has_data)
   retval = SCTP_XMIT_PMTU_FULL;

  if (psize + chunk_len > packet->max_size)

   retval = SCTP_XMIT_PMTU_FULL;

  if (!packet->transport->burst_limited &&
      psize + chunk_len > (packet->transport->cwnd >> 1))



   retval = SCTP_XMIT_PMTU_FULL;

  if (packet->transport->burst_limited &&
      psize + chunk_len > (packet->transport->burst_limited >> 1))



   retval = SCTP_XMIT_PMTU_FULL;

 }

out:
 return retval;
}
