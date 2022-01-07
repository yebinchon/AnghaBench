
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef union sctp_addr {int dummy; } sctp_addr ;
struct sctp_packet {int dummy; } ;
struct sctp_transport {struct sctp_packet packet; } ;
struct TYPE_8__ {int init_tag; } ;
struct sctp_initack_chunk {TYPE_1__ init_hdr; } ;
struct TYPE_12__ {int init_tag; } ;
struct sctp_init_chunk {TYPE_5__ init_hdr; } ;
struct sctp_chunk {int dest; TYPE_6__* sctp_hdr; TYPE_4__* chunk_hdr; } ;
struct TYPE_9__ {int init_tag; } ;
struct TYPE_10__ {TYPE_2__ i; } ;
struct sctp_association {TYPE_3__ peer; } ;
struct TYPE_14__ {int ctl_sock; } ;
struct net {TYPE_7__ sctp; } ;
typedef int __u32 ;
typedef int __u16 ;
struct TYPE_13__ {int vtag; int source; int dest; } ;
struct TYPE_11__ {int type; } ;


 int GFP_ATOMIC ;


 int ntohl (int ) ;
 int ntohs (int ) ;
 int sctp_packet_config (struct sctp_packet*,int ,int ) ;
 int sctp_packet_init (struct sctp_packet*,struct sctp_transport*,int ,int ) ;
 int sctp_sk (int ) ;
 int sctp_source (struct sctp_chunk const*) ;
 struct sctp_transport* sctp_transport_new (struct net*,int ,int ) ;
 int sctp_transport_route (struct sctp_transport*,union sctp_addr*,int ) ;

__attribute__((used)) static struct sctp_packet *sctp_ootb_pkt_new(
     struct net *net,
     const struct sctp_association *asoc,
     const struct sctp_chunk *chunk)
{
 struct sctp_transport *transport;
 struct sctp_packet *packet;
 __u16 sport, dport;
 __u32 vtag;


 sport = ntohs(chunk->sctp_hdr->dest);
 dport = ntohs(chunk->sctp_hdr->source);




 if (asoc) {



  switch (chunk->chunk_hdr->type) {
  case 128:
  {
   struct sctp_initack_chunk *initack;

   initack = (struct sctp_initack_chunk *)chunk->chunk_hdr;
   vtag = ntohl(initack->init_hdr.init_tag);
   break;
  }
  default:
   vtag = asoc->peer.i.init_tag;
   break;
  }
 } else {



  switch (chunk->chunk_hdr->type) {
  case 129:
  {
   struct sctp_init_chunk *init;

   init = (struct sctp_init_chunk *)chunk->chunk_hdr;
   vtag = ntohl(init->init_hdr.init_tag);
   break;
  }
  default:
   vtag = ntohl(chunk->sctp_hdr->vtag);
   break;
  }
 }


 transport = sctp_transport_new(net, sctp_source(chunk), GFP_ATOMIC);
 if (!transport)
  goto nomem;




 sctp_transport_route(transport, (union sctp_addr *)&chunk->dest,
        sctp_sk(net->sctp.ctl_sock));

 packet = &transport->packet;
 sctp_packet_init(packet, transport, sport, dport);
 sctp_packet_config(packet, vtag, 0);

 return packet;

nomem:
 return ((void*)0);
}
