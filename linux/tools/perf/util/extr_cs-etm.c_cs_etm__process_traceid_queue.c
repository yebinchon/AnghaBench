
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cs_etm_packet_queue {int dummy; } ;
struct cs_etm_traceid_queue {TYPE_1__* packet; struct cs_etm_packet_queue packet_queue; } ;
struct cs_etm_queue {int dummy; } ;
struct TYPE_2__ {int sample_type; } ;







 int EINVAL ;
 int cs_etm__exception (struct cs_etm_traceid_queue*) ;
 int cs_etm__flush (struct cs_etm_queue*,struct cs_etm_traceid_queue*) ;
 int cs_etm__sample (struct cs_etm_queue*,struct cs_etm_traceid_queue*) ;
 int cs_etm__set_sample_flags (struct cs_etm_queue*,struct cs_etm_traceid_queue*) ;
 int cs_etm_decoder__get_packet (struct cs_etm_packet_queue*,TYPE_1__*) ;
 int pr_err (char*) ;

__attribute__((used)) static int cs_etm__process_traceid_queue(struct cs_etm_queue *etmq,
      struct cs_etm_traceid_queue *tidq)
{
 int ret;
 struct cs_etm_packet_queue *packet_queue;

 packet_queue = &tidq->packet_queue;


 while (1) {
  ret = cs_etm_decoder__get_packet(packet_queue,
       tidq->packet);
  if (ret <= 0)




   break;
  ret = cs_etm__set_sample_flags(etmq, tidq);
  if (ret < 0)
   break;

  switch (tidq->packet->sample_type) {
  case 128:





   cs_etm__sample(etmq, tidq);
   break;
  case 130:
  case 129:





   cs_etm__exception(tidq);
   break;
  case 132:




   cs_etm__flush(etmq, tidq);
   break;
  case 131:




   pr_err("CS ETM Trace: empty packet\n");
   return -EINVAL;
  default:
   break;
  }
 }

 return ret;
}
