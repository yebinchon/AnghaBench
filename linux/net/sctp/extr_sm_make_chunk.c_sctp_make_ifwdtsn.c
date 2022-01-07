
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_ifwdtsn_skip {int new_cum_tsn; } ;
struct sctp_ifwdtsn_hdr {int new_cum_tsn; } ;
struct TYPE_2__ {int ifwdtsn_hdr; } ;
struct sctp_chunk {TYPE_1__ subh; } ;
struct sctp_association {int dummy; } ;
typedef int skiplist ;
typedef int ftsn_hdr ;
typedef int __u32 ;


 int GFP_ATOMIC ;
 int SCTP_CID_I_FWD_TSN ;
 int htonl (int ) ;
 int sctp_addto_chunk (struct sctp_chunk*,size_t,struct sctp_ifwdtsn_skip*) ;
 struct sctp_chunk* sctp_make_control (struct sctp_association const*,int ,int ,size_t,int ) ;

struct sctp_chunk *sctp_make_ifwdtsn(const struct sctp_association *asoc,
         __u32 new_cum_tsn, size_t nstreams,
         struct sctp_ifwdtsn_skip *skiplist)
{
 struct sctp_chunk *retval = ((void*)0);
 struct sctp_ifwdtsn_hdr ftsn_hdr;
 size_t hint;

 hint = (nstreams + 1) * sizeof(__u32);

 retval = sctp_make_control(asoc, SCTP_CID_I_FWD_TSN, 0, hint,
       GFP_ATOMIC);
 if (!retval)
  return ((void*)0);

 ftsn_hdr.new_cum_tsn = htonl(new_cum_tsn);
 retval->subh.ifwdtsn_hdr =
  sctp_addto_chunk(retval, sizeof(ftsn_hdr), &ftsn_hdr);

 sctp_addto_chunk(retval, nstreams * sizeof(skiplist[0]), skiplist);

 return retval;
}
