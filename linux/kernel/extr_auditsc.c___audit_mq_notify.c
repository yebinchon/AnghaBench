
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sigevent {scalar_t__ sigev_signo; } ;
struct TYPE_2__ {int mqdes; scalar_t__ sigev_signo; } ;
struct audit_context {int type; TYPE_1__ mq_notify; } ;
typedef int mqd_t ;


 int AUDIT_MQ_NOTIFY ;
 struct audit_context* audit_context () ;

void __audit_mq_notify(mqd_t mqdes, const struct sigevent *notification)
{
 struct audit_context *context = audit_context();

 if (notification)
  context->mq_notify.sigev_signo = notification->sigev_signo;
 else
  context->mq_notify.sigev_signo = 0;

 context->mq_notify.mqdes = mqdes;
 context->type = AUDIT_MQ_NOTIFY;
}
