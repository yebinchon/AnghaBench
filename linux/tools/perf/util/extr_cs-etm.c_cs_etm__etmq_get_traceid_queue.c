
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intlist {int dummy; } ;
struct int_node {void* priv; } ;
struct cs_etm_traceid_queue {int dummy; } ;
struct cs_etm_queue {struct cs_etm_traceid_queue** traceid_queues; struct intlist* traceid_queues_list; struct cs_etm_auxtrace* etm; } ;
struct cs_etm_auxtrace {scalar_t__ timeless_decoding; } ;


 int CS_ETM_PER_THREAD_TRACEID ;
 scalar_t__ cs_etm__init_traceid_queue (struct cs_etm_queue*,struct cs_etm_traceid_queue*,int ) ;
 int free (struct cs_etm_traceid_queue*) ;
 struct int_node* intlist__find (struct intlist*,int ) ;
 struct int_node* intlist__findnew (struct intlist*,int ) ;
 int intlist__nr_entries (struct intlist*) ;
 int intlist__remove (struct intlist*,struct int_node*) ;
 struct cs_etm_traceid_queue* malloc (int) ;
 int memset (struct cs_etm_traceid_queue*,int ,int) ;
 struct cs_etm_traceid_queue** reallocarray (struct cs_etm_traceid_queue**,int,int) ;

__attribute__((used)) static struct cs_etm_traceid_queue
*cs_etm__etmq_get_traceid_queue(struct cs_etm_queue *etmq, u8 trace_chan_id)
{
 int idx;
 struct int_node *inode;
 struct intlist *traceid_queues_list;
 struct cs_etm_traceid_queue *tidq, **traceid_queues;
 struct cs_etm_auxtrace *etm = etmq->etm;

 if (etm->timeless_decoding)
  trace_chan_id = CS_ETM_PER_THREAD_TRACEID;

 traceid_queues_list = etmq->traceid_queues_list;





 inode = intlist__find(traceid_queues_list, trace_chan_id);
 if (inode) {
  idx = (int)(intptr_t)inode->priv;
  return etmq->traceid_queues[idx];
 }


 tidq = malloc(sizeof(*tidq));
 if (!tidq)
  return ((void*)0);

 memset(tidq, 0, sizeof(*tidq));


 idx = intlist__nr_entries(traceid_queues_list);

 inode = intlist__findnew(traceid_queues_list, trace_chan_id);
 if (!inode)
  goto out_free;


 inode->priv = (void *)(intptr_t)idx;

 if (cs_etm__init_traceid_queue(etmq, tidq, trace_chan_id))
  goto out_free;


 traceid_queues = etmq->traceid_queues;
 traceid_queues = reallocarray(traceid_queues,
          idx + 1,
          sizeof(*traceid_queues));





 if (!traceid_queues)
  goto out_free;

 traceid_queues[idx] = tidq;
 etmq->traceid_queues = traceid_queues;

 return etmq->traceid_queues[idx];

out_free:




 intlist__remove(traceid_queues_list, inode);
 free(tidq);

 return ((void*)0);
}
