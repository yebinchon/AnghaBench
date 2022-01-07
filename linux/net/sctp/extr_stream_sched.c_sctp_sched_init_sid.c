
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_stream_out_ext {int outq; } ;
struct sctp_stream {int dummy; } ;
struct sctp_sched_ops {int (* init_sid ) (struct sctp_stream*,int ,int ) ;} ;
typedef int gfp_t ;
typedef int __u16 ;
struct TYPE_2__ {struct sctp_stream_out_ext* ext; } ;


 int INIT_LIST_HEAD (int *) ;
 TYPE_1__* SCTP_SO (struct sctp_stream*,int ) ;
 struct sctp_sched_ops* sctp_sched_ops_from_stream (struct sctp_stream*) ;
 int stub1 (struct sctp_stream*,int ,int ) ;

int sctp_sched_init_sid(struct sctp_stream *stream, __u16 sid, gfp_t gfp)
{
 struct sctp_sched_ops *sched = sctp_sched_ops_from_stream(stream);
 struct sctp_stream_out_ext *ext = SCTP_SO(stream, sid)->ext;

 INIT_LIST_HEAD(&ext->outq);
 return sched->init_sid(stream, sid, gfp);
}
