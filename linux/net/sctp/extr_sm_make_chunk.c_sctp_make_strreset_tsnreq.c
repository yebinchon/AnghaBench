
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tsnreq ;
struct TYPE_2__ {int length; int type; } ;
struct sctp_strreset_tsnreq {int request_seq; TYPE_1__ param_hdr; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_association {int strreset_outseq; } ;
typedef int __u16 ;


 int SCTP_PARAM_RESET_TSN_REQUEST ;
 int htonl (int ) ;
 int htons (int) ;
 int sctp_addto_chunk (struct sctp_chunk*,int,struct sctp_strreset_tsnreq*) ;
 struct sctp_chunk* sctp_make_reconf (struct sctp_association const*,int) ;

struct sctp_chunk *sctp_make_strreset_tsnreq(
     const struct sctp_association *asoc)
{
 struct sctp_strreset_tsnreq tsnreq;
 __u16 length = sizeof(tsnreq);
 struct sctp_chunk *retval;

 retval = sctp_make_reconf(asoc, length);
 if (!retval)
  return ((void*)0);

 tsnreq.param_hdr.type = SCTP_PARAM_RESET_TSN_REQUEST;
 tsnreq.param_hdr.length = htons(length);
 tsnreq.request_seq = htonl(asoc->strreset_outseq);

 sctp_addto_chunk(retval, sizeof(tsnreq), &tsnreq);

 return retval;
}
