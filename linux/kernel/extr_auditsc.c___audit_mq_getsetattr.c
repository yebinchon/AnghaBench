
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mq_attr {int dummy; } ;
struct TYPE_2__ {struct mq_attr mqstat; int mqdes; } ;
struct audit_context {int type; TYPE_1__ mq_getsetattr; } ;
typedef int mqd_t ;


 int AUDIT_MQ_GETSETATTR ;
 struct audit_context* audit_context () ;

void __audit_mq_getsetattr(mqd_t mqdes, struct mq_attr *mqstat)
{
 struct audit_context *context = audit_context();
 context->mq_getsetattr.mqdes = mqdes;
 context->mq_getsetattr.mqstat = *mqstat;
 context->type = AUDIT_MQ_GETSETATTR;
}
