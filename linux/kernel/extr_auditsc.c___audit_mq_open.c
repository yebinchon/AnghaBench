
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct mq_attr {int dummy; } ;
struct TYPE_2__ {int oflag; int mode; int attr; } ;
struct audit_context {int type; TYPE_1__ mq_open; } ;


 int AUDIT_MQ_OPEN ;
 struct audit_context* audit_context () ;
 int memcpy (int *,struct mq_attr*,int) ;
 int memset (int *,int ,int) ;

void __audit_mq_open(int oflag, umode_t mode, struct mq_attr *attr)
{
 struct audit_context *context = audit_context();

 if (attr)
  memcpy(&context->mq_open.attr, attr, sizeof(struct mq_attr));
 else
  memset(&context->mq_open.attr, 0, sizeof(struct mq_attr));

 context->mq_open.oflag = oflag;
 context->mq_open.mode = mode;

 context->type = AUDIT_MQ_OPEN;
}
