
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_stream_priorities {int prio; int * next; int active; int prio_sched; } ;
struct sctp_stream {int dummy; } ;
typedef int gfp_t ;


 int INIT_LIST_HEAD (int *) ;
 struct sctp_stream_priorities* kmalloc (int,int ) ;

__attribute__((used)) static struct sctp_stream_priorities *sctp_sched_prio_new_head(
   struct sctp_stream *stream, int prio, gfp_t gfp)
{
 struct sctp_stream_priorities *p;

 p = kmalloc(sizeof(*p), gfp);
 if (!p)
  return ((void*)0);

 INIT_LIST_HEAD(&p->prio_sched);
 INIT_LIST_HEAD(&p->active);
 p->next = ((void*)0);
 p->prio = prio;

 return p;
}
