
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_ecnehdr {int lowest_tsn; } ;
struct TYPE_2__ {int ecne_hdr; } ;
struct sctp_chunk {TYPE_1__ subh; } ;
struct sctp_association {int dummy; } ;
typedef int ecne ;
typedef int __u32 ;


 int GFP_ATOMIC ;
 int SCTP_CID_ECN_ECNE ;
 int htonl (int const) ;
 int sctp_addto_chunk (struct sctp_chunk*,int,struct sctp_ecnehdr*) ;
 struct sctp_chunk* sctp_make_control (struct sctp_association const*,int ,int ,int,int ) ;

struct sctp_chunk *sctp_make_ecne(const struct sctp_association *asoc,
      const __u32 lowest_tsn)
{
 struct sctp_chunk *retval;
 struct sctp_ecnehdr ecne;

 ecne.lowest_tsn = htonl(lowest_tsn);
 retval = sctp_make_control(asoc, SCTP_CID_ECN_ECNE, 0,
       sizeof(ecne), GFP_ATOMIC);
 if (!retval)
  goto nodata;
 retval->subh.ecne_hdr =
  sctp_addto_chunk(retval, sizeof(ecne), &ecne);

nodata:
 return retval;
}
