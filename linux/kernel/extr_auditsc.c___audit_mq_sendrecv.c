
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec64 {int dummy; } ;
struct TYPE_2__ {size_t msg_len; unsigned int msg_prio; int mqdes; struct timespec64 abs_timeout; } ;
struct audit_context {int type; TYPE_1__ mq_sendrecv; } ;
typedef int mqd_t ;


 int AUDIT_MQ_SENDRECV ;
 struct audit_context* audit_context () ;
 int memcpy (struct timespec64*,struct timespec64 const*,int) ;
 int memset (struct timespec64*,int ,int) ;

void __audit_mq_sendrecv(mqd_t mqdes, size_t msg_len, unsigned int msg_prio,
   const struct timespec64 *abs_timeout)
{
 struct audit_context *context = audit_context();
 struct timespec64 *p = &context->mq_sendrecv.abs_timeout;

 if (abs_timeout)
  memcpy(p, abs_timeout, sizeof(*p));
 else
  memset(p, 0, sizeof(*p));

 context->mq_sendrecv.mqdes = mqdes;
 context->mq_sendrecv.msg_len = msg_len;
 context->mq_sendrecv.msg_prio = msg_prio;

 context->type = AUDIT_MQ_SENDRECV;
}
