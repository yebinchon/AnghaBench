
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs_etm_traceid_queue {int dummy; } ;
struct cs_etm_queue {scalar_t__ buf_len; } ;


 int CS_ETM_PER_THREAD_TRACEID ;
 int EINVAL ;
 int cs_etm__decode_data_block (struct cs_etm_queue*) ;
 int cs_etm__end_block (struct cs_etm_queue*,struct cs_etm_traceid_queue*) ;
 struct cs_etm_traceid_queue* cs_etm__etmq_get_traceid_queue (struct cs_etm_queue*,int ) ;
 int cs_etm__get_data_block (struct cs_etm_queue*) ;
 int cs_etm__process_traceid_queue (struct cs_etm_queue*,struct cs_etm_traceid_queue*) ;

__attribute__((used)) static int cs_etm__run_decoder(struct cs_etm_queue *etmq)
{
 int err = 0;
 struct cs_etm_traceid_queue *tidq;

 tidq = cs_etm__etmq_get_traceid_queue(etmq, CS_ETM_PER_THREAD_TRACEID);
 if (!tidq)
  return -EINVAL;


 while (1) {
  err = cs_etm__get_data_block(etmq);
  if (err <= 0)
   return err;


  do {
   err = cs_etm__decode_data_block(etmq);
   if (err)
    return err;






   err = cs_etm__process_traceid_queue(etmq, tidq);

  } while (etmq->buf_len);

  if (err == 0)

   err = cs_etm__end_block(etmq, tidq);
 }

 return err;
}
