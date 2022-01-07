
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sctp_transport {struct sctp_association* asoc; } ;
struct sctp_packet {int dummy; } ;
struct sctp_chunk {int dummy; } ;
struct TYPE_5__ {int init_tag; } ;
struct TYPE_8__ {TYPE_1__ i; int port; } ;
struct TYPE_6__ {int port; } ;
struct TYPE_7__ {TYPE_2__ bind_addr; } ;
struct sctp_association {TYPE_4__ peer; TYPE_3__ base; } ;
typedef int gfp_t ;
typedef int __u32 ;
typedef int __u16 ;


 int sctp_packet_append_chunk (struct sctp_packet*,struct sctp_chunk*) ;
 int sctp_packet_config (struct sctp_packet*,int const,int ) ;
 int sctp_packet_init (struct sctp_packet*,struct sctp_transport*,int const,int const) ;
 int sctp_packet_transmit (struct sctp_packet*,int ) ;

__attribute__((used)) static int sctp_packet_singleton(struct sctp_transport *transport,
     struct sctp_chunk *chunk, gfp_t gfp)
{
 const struct sctp_association *asoc = transport->asoc;
 const __u16 sport = asoc->base.bind_addr.port;
 const __u16 dport = asoc->peer.port;
 const __u32 vtag = asoc->peer.i.init_tag;
 struct sctp_packet singleton;

 sctp_packet_init(&singleton, transport, sport, dport);
 sctp_packet_config(&singleton, vtag, 0);
 sctp_packet_append_chunk(&singleton, chunk);
 return sctp_packet_transmit(&singleton, gfp);
}
