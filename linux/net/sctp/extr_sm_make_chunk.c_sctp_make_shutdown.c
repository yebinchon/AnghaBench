
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sctp_shutdownhdr {int cum_tsn_ack; } ;
struct TYPE_3__ {int shutdown_hdr; } ;
struct sctp_chunk {int transport; TYPE_1__ subh; } ;
struct TYPE_4__ {int tsn_map; } ;
struct sctp_association {TYPE_2__ peer; } ;
typedef int shut ;
typedef int __u32 ;


 int GFP_ATOMIC ;
 int SCTP_CID_SHUTDOWN ;
 int htonl (int ) ;
 int sctp_addto_chunk (struct sctp_chunk*,int,struct sctp_shutdownhdr*) ;
 struct sctp_chunk* sctp_make_control (struct sctp_association const*,int ,int ,int,int ) ;
 int sctp_tsnmap_get_ctsn (int *) ;

struct sctp_chunk *sctp_make_shutdown(const struct sctp_association *asoc,
          const struct sctp_chunk *chunk)
{
 struct sctp_shutdownhdr shut;
 struct sctp_chunk *retval;
 __u32 ctsn;

 ctsn = sctp_tsnmap_get_ctsn(&asoc->peer.tsn_map);
 shut.cum_tsn_ack = htonl(ctsn);

 retval = sctp_make_control(asoc, SCTP_CID_SHUTDOWN, 0,
       sizeof(shut), GFP_ATOMIC);
 if (!retval)
  goto nodata;

 retval->subh.shutdown_hdr =
  sctp_addto_chunk(retval, sizeof(shut), &shut);

 if (chunk)
  retval->transport = chunk->transport;
nodata:
 return retval;
}
