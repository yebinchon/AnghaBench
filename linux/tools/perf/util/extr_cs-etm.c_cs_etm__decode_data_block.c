
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs_etm_queue {size_t offset; size_t buf_used; size_t buf_len; int * buf; int decoder; } ;


 int cs_etm_decoder__process_data_block (int ,size_t,int *,size_t,size_t*) ;

__attribute__((used)) static int cs_etm__decode_data_block(struct cs_etm_queue *etmq)
{
 int ret = 0;
 size_t processed = 0;
 ret = cs_etm_decoder__process_data_block(etmq->decoder,
       etmq->offset,
       &etmq->buf[etmq->buf_used],
       etmq->buf_len,
       &processed);
 if (ret)
  goto out;

 etmq->offset += processed;
 etmq->buf_used += processed;
 etmq->buf_len -= processed;

out:
 return ret;
}
