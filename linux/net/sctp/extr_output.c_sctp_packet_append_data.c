
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u32 ;
struct sctp_transport {size_t flight_size; struct sctp_association* asoc; } ;
struct sctp_packet {struct sctp_transport* transport; } ;
struct sctp_chunk {int dummy; } ;
struct TYPE_7__ {TYPE_2__* si; } ;
struct TYPE_8__ {size_t rwnd; } ;
struct TYPE_5__ {size_t outstanding_bytes; } ;
struct sctp_association {TYPE_3__ stream; TYPE_4__ peer; TYPE_1__ outqueue; } ;
struct TYPE_6__ {int (* assign_number ) (struct sctp_chunk*) ;} ;


 int sctp_chunk_assign_tsn (struct sctp_chunk*) ;
 size_t sctp_data_size (struct sctp_chunk*) ;
 int stub1 (struct sctp_chunk*) ;

__attribute__((used)) static void sctp_packet_append_data(struct sctp_packet *packet,
    struct sctp_chunk *chunk)
{
 struct sctp_transport *transport = packet->transport;
 size_t datasize = sctp_data_size(chunk);
 struct sctp_association *asoc = transport->asoc;
 u32 rwnd = asoc->peer.rwnd;


 transport->flight_size += datasize;


 asoc->outqueue.outstanding_bytes += datasize;


 if (datasize < rwnd)
  rwnd -= datasize;
 else
  rwnd = 0;

 asoc->peer.rwnd = rwnd;
 sctp_chunk_assign_tsn(chunk);
 asoc->stream.si->assign_number(chunk);
}
