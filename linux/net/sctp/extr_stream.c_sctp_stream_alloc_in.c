
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_stream {scalar_t__ incnt; int in; } ;
typedef int gfp_t ;
typedef scalar_t__ __u16 ;


 int genradix_prealloc (int *,scalar_t__,int ) ;

__attribute__((used)) static int sctp_stream_alloc_in(struct sctp_stream *stream, __u16 incnt,
    gfp_t gfp)
{
 int ret;

 if (incnt <= stream->incnt)
  return 0;

 ret = genradix_prealloc(&stream->in, incnt, gfp);
 if (ret)
  return ret;

 stream->incnt = incnt;
 return 0;
}
