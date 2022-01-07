
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sctp_packet {int has_sack; int has_auth; int has_data; int has_cookie_echo; int transport; int size; int chunk_list; struct sctp_chunk* auth; } ;
struct sctp_chunk {int transport; int list; TYPE_3__* asoc; int sent_count; int sent_at; TYPE_1__* chunk_hdr; } ;
typedef enum sctp_xmit { ____Placeholder_sctp_xmit } sctp_xmit ;
typedef scalar_t__ __u16 ;
struct TYPE_5__ {int osacks; } ;
struct TYPE_6__ {TYPE_2__ stats; } ;
struct TYPE_4__ {int type; int length; } ;







 scalar_t__ SCTP_PAD4 (int ) ;
 int SCTP_XMIT_OK ;
 int jiffies ;
 int list_add_tail (int *,int *) ;
 int ntohs (int ) ;
 int sctp_packet_append_data (struct sctp_packet*,struct sctp_chunk*) ;
 int sctp_packet_will_fit (struct sctp_packet*,struct sctp_chunk*,scalar_t__) ;

__attribute__((used)) static enum sctp_xmit __sctp_packet_append_chunk(struct sctp_packet *packet,
       struct sctp_chunk *chunk)
{
 __u16 chunk_len = SCTP_PAD4(ntohs(chunk->chunk_hdr->length));
 enum sctp_xmit retval = SCTP_XMIT_OK;


 retval = sctp_packet_will_fit(packet, chunk, chunk_len);
 if (retval != SCTP_XMIT_OK)
  goto finish;


 switch (chunk->chunk_hdr->type) {
 case 130:
 case 129:

  sctp_packet_append_data(packet, chunk);

  packet->has_sack = 1;

  packet->has_auth = 1;

  packet->has_data = 1;

  chunk->sent_at = jiffies;

  chunk->sent_count++;
  break;
 case 131:
  packet->has_cookie_echo = 1;
  break;

 case 128:
  packet->has_sack = 1;
  if (chunk->asoc)
   chunk->asoc->stats.osacks++;
  break;

 case 132:
  packet->has_auth = 1;
  packet->auth = chunk;
  break;
 }


 list_add_tail(&chunk->list, &packet->chunk_list);
 packet->size += chunk_len;
 chunk->transport = packet->transport;
finish:
 return retval;
}
