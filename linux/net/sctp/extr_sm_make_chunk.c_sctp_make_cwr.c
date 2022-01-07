
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_cwrhdr {int lowest_tsn; } ;
struct TYPE_2__ {int ecn_cwr_hdr; } ;
struct sctp_chunk {int transport; TYPE_1__ subh; } ;
struct sctp_association {int dummy; } ;
typedef int cwr ;
typedef int __u32 ;


 int GFP_ATOMIC ;
 int SCTP_CID_ECN_CWR ;
 int htonl (int const) ;
 int sctp_addto_chunk (struct sctp_chunk*,int,struct sctp_cwrhdr*) ;
 struct sctp_chunk* sctp_make_control (struct sctp_association const*,int ,int ,int,int ) ;

struct sctp_chunk *sctp_make_cwr(const struct sctp_association *asoc,
     const __u32 lowest_tsn,
     const struct sctp_chunk *chunk)
{
 struct sctp_chunk *retval;
 struct sctp_cwrhdr cwr;

 cwr.lowest_tsn = htonl(lowest_tsn);
 retval = sctp_make_control(asoc, SCTP_CID_ECN_CWR, 0,
       sizeof(cwr), GFP_ATOMIC);

 if (!retval)
  goto nodata;

 retval->subh.ecn_cwr_hdr =
  sctp_addto_chunk(retval, sizeof(cwr), &cwr);
 if (chunk)
  retval->transport = chunk->transport;

nodata:
 return retval;
}
