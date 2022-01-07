
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_fwdtsn_skip {int ssn; int stream; int new_cum_tsn; } ;
struct sctp_fwdtsn_hdr {int ssn; int stream; int new_cum_tsn; } ;
struct TYPE_2__ {int fwdtsn_hdr; } ;
struct sctp_chunk {TYPE_1__ subh; } ;
struct sctp_association {int dummy; } ;
typedef int skip ;
typedef int ftsn_hdr ;
typedef int __u32 ;


 int GFP_ATOMIC ;
 int SCTP_CID_FWD_TSN ;
 int htonl (int ) ;
 int sctp_addto_chunk (struct sctp_chunk*,int,struct sctp_fwdtsn_skip*) ;
 struct sctp_chunk* sctp_make_control (struct sctp_association const*,int ,int ,size_t,int ) ;

struct sctp_chunk *sctp_make_fwdtsn(const struct sctp_association *asoc,
        __u32 new_cum_tsn, size_t nstreams,
        struct sctp_fwdtsn_skip *skiplist)
{
 struct sctp_chunk *retval = ((void*)0);
 struct sctp_fwdtsn_hdr ftsn_hdr;
 struct sctp_fwdtsn_skip skip;
 size_t hint;
 int i;

 hint = (nstreams + 1) * sizeof(__u32);

 retval = sctp_make_control(asoc, SCTP_CID_FWD_TSN, 0, hint, GFP_ATOMIC);

 if (!retval)
  return ((void*)0);

 ftsn_hdr.new_cum_tsn = htonl(new_cum_tsn);
 retval->subh.fwdtsn_hdr =
  sctp_addto_chunk(retval, sizeof(ftsn_hdr), &ftsn_hdr);

 for (i = 0; i < nstreams; i++) {
  skip.stream = skiplist[i].stream;
  skip.ssn = skiplist[i].ssn;
  sctp_addto_chunk(retval, sizeof(skip), &skip);
 }

 return retval;
}
