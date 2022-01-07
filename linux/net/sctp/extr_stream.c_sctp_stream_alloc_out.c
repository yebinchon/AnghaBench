
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_stream {scalar_t__ outcnt; int out; } ;
typedef int gfp_t ;
typedef scalar_t__ __u16 ;


 int genradix_prealloc (int *,scalar_t__,int ) ;

__attribute__((used)) static int sctp_stream_alloc_out(struct sctp_stream *stream, __u16 outcnt,
     gfp_t gfp)
{
 int ret;

 if (outcnt <= stream->outcnt)
  return 0;

 ret = genradix_prealloc(&stream->out, outcnt, gfp);
 if (ret)
  return ret;

 stream->outcnt = outcnt;
 return 0;
}
