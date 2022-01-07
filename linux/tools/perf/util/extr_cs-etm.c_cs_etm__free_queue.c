
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs_etm_queue {int decoder; } ;


 int cs_etm__free_traceid_queues (struct cs_etm_queue*) ;
 int cs_etm_decoder__free (int ) ;
 int free (struct cs_etm_queue*) ;

__attribute__((used)) static void cs_etm__free_queue(void *priv)
{
 struct cs_etm_queue *etmq = priv;

 if (!etmq)
  return;

 cs_etm_decoder__free(etmq->decoder);
 cs_etm__free_traceid_queues(etmq);
 free(etmq);
}
