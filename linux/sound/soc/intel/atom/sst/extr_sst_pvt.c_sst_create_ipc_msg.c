
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipc_post {int is_large; int * mailbox_data; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int SST_MAILBOX_SIZE ;
 int kfree (struct ipc_post*) ;
 void* kzalloc (int,int ) ;

int sst_create_ipc_msg(struct ipc_post **arg, bool large)
{
 struct ipc_post *msg;

 msg = kzalloc(sizeof(*msg), GFP_ATOMIC);
 if (!msg)
  return -ENOMEM;
 if (large) {
  msg->mailbox_data = kzalloc(SST_MAILBOX_SIZE, GFP_ATOMIC);
  if (!msg->mailbox_data) {
   kfree(msg);
   return -ENOMEM;
  }
 } else {
  msg->mailbox_data = ((void*)0);
 }
 msg->is_large = large;
 *arg = msg;
 return 0;
}
