
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs_etm_queue {int dummy; } ;
struct cs_etm_decoder_params {int operation; int formatted; int fsyncs; int hsyncs; int frame_aligned; struct cs_etm_queue* data; int packet_printer; } ;
typedef enum cs_etm_decoder_operation { ____Placeholder_cs_etm_decoder_operation } cs_etm_decoder_operation ;


 int CS_ETM_OPERATION_MAX ;
 int EINVAL ;
 int cs_etm__packet_dump ;

__attribute__((used)) static int cs_etm__init_decoder_params(struct cs_etm_decoder_params *d_params,
           struct cs_etm_queue *etmq,
           enum cs_etm_decoder_operation mode)
{
 int ret = -EINVAL;

 if (!(mode < CS_ETM_OPERATION_MAX))
  goto out;

 d_params->packet_printer = cs_etm__packet_dump;
 d_params->operation = mode;
 d_params->data = etmq;
 d_params->formatted = 1;
 d_params->fsyncs = 0;
 d_params->hsyncs = 0;
 d_params->frame_aligned = 1;

 ret = 0;
out:
 return ret;
}
