
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* length; int type; } ;
struct sctp_strreset_addstrm {scalar_t__ reserved; void* request_seq; void* number_of_streams; TYPE_1__ param_hdr; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_association {scalar_t__ strreset_outseq; } ;
typedef int addstrm ;
typedef int __u16 ;


 int SCTP_PARAM_RESET_ADD_IN_STREAMS ;
 int SCTP_PARAM_RESET_ADD_OUT_STREAMS ;
 void* htonl (scalar_t__) ;
 void* htons (int) ;
 int sctp_addto_chunk (struct sctp_chunk*,int,struct sctp_strreset_addstrm*) ;
 struct sctp_chunk* sctp_make_reconf (struct sctp_association const*,int) ;

struct sctp_chunk *sctp_make_strreset_addstrm(
     const struct sctp_association *asoc,
     __u16 out, __u16 in)
{
 struct sctp_strreset_addstrm addstrm;
 __u16 size = sizeof(addstrm);
 struct sctp_chunk *retval;

 retval = sctp_make_reconf(asoc, (!!out + !!in) * size);
 if (!retval)
  return ((void*)0);

 if (out) {
  addstrm.param_hdr.type = SCTP_PARAM_RESET_ADD_OUT_STREAMS;
  addstrm.param_hdr.length = htons(size);
  addstrm.number_of_streams = htons(out);
  addstrm.request_seq = htonl(asoc->strreset_outseq);
  addstrm.reserved = 0;

  sctp_addto_chunk(retval, size, &addstrm);
 }

 if (in) {
  addstrm.param_hdr.type = SCTP_PARAM_RESET_ADD_IN_STREAMS;
  addstrm.param_hdr.length = htons(size);
  addstrm.number_of_streams = htons(in);
  addstrm.request_seq = htonl(asoc->strreset_outseq + !!out);
  addstrm.reserved = 0;

  sctp_addto_chunk(retval, size, &addstrm);
 }

 return retval;
}
