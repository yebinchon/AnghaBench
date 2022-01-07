
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iucv_path {TYPE_1__* handler; } ;
struct iucv_message_complete {size_t ippathid; int ipbfln2f; int ipmsgtag; int ipsrccls; int iprmmsg; int ipaudit; int ipmsgid; int ipflags1; } ;
struct iucv_message {int length; int tag; int class; int rmmsg; int audit; int id; int flags; } ;
struct iucv_irq_data {int dummy; } ;
struct TYPE_2__ {int (* message_complete ) (struct iucv_path*,struct iucv_message*) ;} ;


 struct iucv_path** iucv_path_table ;
 int memcpy (int ,int ,int) ;
 int stub1 (struct iucv_path*,struct iucv_message*) ;

__attribute__((used)) static void iucv_message_complete(struct iucv_irq_data *data)
{
 struct iucv_message_complete *imc = (void *) data;
 struct iucv_path *path = iucv_path_table[imc->ippathid];
 struct iucv_message msg;

 if (path && path->handler && path->handler->message_complete) {
  msg.flags = imc->ipflags1;
  msg.id = imc->ipmsgid;
  msg.audit = imc->ipaudit;
  memcpy(msg.rmmsg, imc->iprmmsg, 8);
  msg.class = imc->ipsrccls;
  msg.tag = imc->ipmsgtag;
  msg.length = imc->ipbfln2f;
  path->handler->message_complete(path, &msg);
 }
}
