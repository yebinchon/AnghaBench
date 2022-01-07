
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs_etm_queue {int buf_len; int decoder; } ;


 int cs_etm__get_trace (struct cs_etm_queue*) ;
 int cs_etm_decoder__reset (int ) ;

__attribute__((used)) static int cs_etm__get_data_block(struct cs_etm_queue *etmq)
{
 int ret;

 if (!etmq->buf_len) {
  ret = cs_etm__get_trace(etmq);
  if (ret <= 0)
   return ret;




  ret = cs_etm_decoder__reset(etmq->decoder);
  if (ret)
   return ret;
 }

 return etmq->buf_len;
}
