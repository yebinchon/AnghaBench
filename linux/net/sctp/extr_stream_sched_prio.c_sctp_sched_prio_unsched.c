
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_stream_priorities {struct sctp_stream_out_ext* next; int prio_sched; int active; } ;
struct sctp_stream_out_ext {int prio_list; struct sctp_stream_priorities* prio_head; } ;


 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;
 int sctp_sched_prio_next_stream (struct sctp_stream_priorities*) ;

__attribute__((used)) static bool sctp_sched_prio_unsched(struct sctp_stream_out_ext *soute)
{
 bool scheduled = 0;

 if (!list_empty(&soute->prio_list)) {
  struct sctp_stream_priorities *prio_head = soute->prio_head;


  scheduled = 1;

  if (prio_head->next == soute)

   sctp_sched_prio_next_stream(prio_head);

  list_del_init(&soute->prio_list);


  if (list_empty(&prio_head->active)) {
   list_del_init(&prio_head->prio_sched);

   prio_head->next = ((void*)0);
  }
 }

 return scheduled;
}
