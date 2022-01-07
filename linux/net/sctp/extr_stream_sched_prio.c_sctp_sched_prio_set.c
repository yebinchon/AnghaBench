
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_stream_priorities {int dummy; } ;
struct sctp_stream_out_ext {struct sctp_stream_priorities* prio_head; } ;
struct sctp_stream_out {struct sctp_stream_out_ext* ext; } ;
struct sctp_stream {int outcnt; } ;
typedef int gfp_t ;
typedef int __u16 ;


 int ENOMEM ;
 struct sctp_stream_out* SCTP_SO (struct sctp_stream*,int) ;
 int kfree (struct sctp_stream_priorities*) ;
 struct sctp_stream_priorities* sctp_sched_prio_get_head (struct sctp_stream*,int,int ) ;
 int sctp_sched_prio_sched (struct sctp_stream*,struct sctp_stream_out_ext*) ;
 int sctp_sched_prio_unsched (struct sctp_stream_out_ext*) ;

__attribute__((used)) static int sctp_sched_prio_set(struct sctp_stream *stream, __u16 sid,
          __u16 prio, gfp_t gfp)
{
 struct sctp_stream_out *sout = SCTP_SO(stream, sid);
 struct sctp_stream_out_ext *soute = sout->ext;
 struct sctp_stream_priorities *prio_head, *old;
 bool reschedule = 0;
 int i;

 prio_head = sctp_sched_prio_get_head(stream, prio, gfp);
 if (!prio_head)
  return -ENOMEM;

 reschedule = sctp_sched_prio_unsched(soute);
 old = soute->prio_head;
 soute->prio_head = prio_head;
 if (reschedule)
  sctp_sched_prio_sched(stream, soute);

 if (!old)

  return 0;

 for (i = 0; i < stream->outcnt; i++) {
  soute = SCTP_SO(stream, i)->ext;
  if (soute && soute->prio_head == old)

   return 0;
 }


 kfree(old);

 return 0;
}
