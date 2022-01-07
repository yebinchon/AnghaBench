
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_stream_out_ext {int dummy; } ;
struct sctp_stream {int dummy; } ;
typedef int __u16 ;
struct TYPE_2__ {struct sctp_stream_out_ext* ext; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_1__* SCTP_SO (struct sctp_stream*,int ) ;
 int kfree (struct sctp_stream_out_ext*) ;
 struct sctp_stream_out_ext* kzalloc (int,int ) ;
 int sctp_sched_init_sid (struct sctp_stream*,int ,int ) ;

int sctp_stream_init_ext(struct sctp_stream *stream, __u16 sid)
{
 struct sctp_stream_out_ext *soute;
 int ret;

 soute = kzalloc(sizeof(*soute), GFP_KERNEL);
 if (!soute)
  return -ENOMEM;
 SCTP_SO(stream, sid)->ext = soute;

 ret = sctp_sched_init_sid(stream, sid, GFP_KERNEL);
 if (ret) {
  kfree(SCTP_SO(stream, sid)->ext);
  SCTP_SO(stream, sid)->ext = ((void*)0);
 }

 return ret;
}
