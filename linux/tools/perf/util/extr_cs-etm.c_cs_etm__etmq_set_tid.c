
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cs_etm_traceid_queue {int thread; int tid; } ;
struct cs_etm_queue {struct cs_etm_auxtrace* etm; } ;
struct cs_etm_auxtrace {int machine; } ;
typedef int pid_t ;


 int EINVAL ;
 struct cs_etm_traceid_queue* cs_etm__etmq_get_traceid_queue (struct cs_etm_queue*,int ) ;
 scalar_t__ cs_etm__get_cpu (int ,int*) ;
 int cs_etm__set_pid_tid_cpu (struct cs_etm_auxtrace*,struct cs_etm_traceid_queue*) ;
 int machine__set_current_tid (int ,int,int ,int ) ;
 int thread__zput (int ) ;

int cs_etm__etmq_set_tid(struct cs_etm_queue *etmq,
    pid_t tid, u8 trace_chan_id)
{
 int cpu, err = -EINVAL;
 struct cs_etm_auxtrace *etm = etmq->etm;
 struct cs_etm_traceid_queue *tidq;

 tidq = cs_etm__etmq_get_traceid_queue(etmq, trace_chan_id);
 if (!tidq)
  return err;

 if (cs_etm__get_cpu(trace_chan_id, &cpu) < 0)
  return err;

 err = machine__set_current_tid(etm->machine, cpu, tid, tid);
 if (err)
  return err;

 tidq->tid = tid;
 thread__zput(tidq->thread);

 cs_etm__set_pid_tid_cpu(etm, tidq);
 return 0;
}
