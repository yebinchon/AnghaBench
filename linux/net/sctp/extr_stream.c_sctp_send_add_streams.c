
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_stream {scalar_t__ outcnt; scalar_t__ incnt; } ;
struct sctp_chunk {int dummy; } ;
struct TYPE_2__ {int reconf_capable; } ;
struct sctp_association {int strreset_enable; int strreset_outstanding; struct sctp_chunk* strreset_chunk; TYPE_1__ peer; struct sctp_stream stream; } ;
struct sctp_add_streams {scalar_t__ sas_outstrms; scalar_t__ sas_instrms; } ;
typedef scalar_t__ __u32 ;
typedef scalar_t__ __u16 ;


 int EINPROGRESS ;
 int EINVAL ;
 int ENOMEM ;
 int ENOPROTOOPT ;
 int GFP_KERNEL ;
 int SCTP_ENABLE_CHANGE_ASSOC_REQ ;
 scalar_t__ SCTP_MAX_STREAM ;
 int sctp_chunk_hold (struct sctp_chunk*) ;
 int sctp_chunk_put (struct sctp_chunk*) ;
 struct sctp_chunk* sctp_make_strreset_addstrm (struct sctp_association*,scalar_t__,scalar_t__) ;
 int sctp_send_reconf (struct sctp_association*,struct sctp_chunk*) ;
 int sctp_stream_alloc_out (struct sctp_stream*,scalar_t__,int ) ;

int sctp_send_add_streams(struct sctp_association *asoc,
     struct sctp_add_streams *params)
{
 struct sctp_stream *stream = &asoc->stream;
 struct sctp_chunk *chunk = ((void*)0);
 int retval;
 __u32 outcnt, incnt;
 __u16 out, in;

 if (!asoc->peer.reconf_capable ||
     !(asoc->strreset_enable & SCTP_ENABLE_CHANGE_ASSOC_REQ)) {
  retval = -ENOPROTOOPT;
  goto out;
 }

 if (asoc->strreset_outstanding) {
  retval = -EINPROGRESS;
  goto out;
 }

 out = params->sas_outstrms;
 in = params->sas_instrms;
 outcnt = stream->outcnt + out;
 incnt = stream->incnt + in;
 if (outcnt > SCTP_MAX_STREAM || incnt > SCTP_MAX_STREAM ||
     (!out && !in)) {
  retval = -EINVAL;
  goto out;
 }

 if (out) {
  retval = sctp_stream_alloc_out(stream, outcnt, GFP_KERNEL);
  if (retval)
   goto out;
 }

 chunk = sctp_make_strreset_addstrm(asoc, out, in);
 if (!chunk) {
  retval = -ENOMEM;
  goto out;
 }

 asoc->strreset_chunk = chunk;
 sctp_chunk_hold(asoc->strreset_chunk);

 retval = sctp_send_reconf(asoc, chunk);
 if (retval) {
  sctp_chunk_put(asoc->strreset_chunk);
  asoc->strreset_chunk = ((void*)0);
  goto out;
 }

 asoc->strreset_outstanding = !!out + !!in;

out:
 return retval;
}
