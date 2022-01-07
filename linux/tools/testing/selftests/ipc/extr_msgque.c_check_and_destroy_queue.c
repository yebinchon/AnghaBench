
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msgque_data {int qnum; int msq_id; TYPE_1__* messages; } ;
struct msg1 {scalar_t__ mtype; int mtext; } ;
struct TYPE_2__ {int msize; scalar_t__ mtype; int mtext; } ;


 int EINVAL ;
 int ENOMSG ;
 int IPC_NOWAIT ;
 int IPC_RMID ;
 int MAX_MSG_SIZE ;
 int errno ;
 scalar_t__ memcmp (int ,int ,int) ;
 scalar_t__ msgctl (int ,int ,int *) ;
 int msgrcv (int ,scalar_t__*,int ,int ,int ) ;
 int printf (char*,...) ;

int check_and_destroy_queue(struct msgque_data *msgque)
{
 struct msg1 message;
 int cnt = 0, ret;

 while (1) {
  ret = msgrcv(msgque->msq_id, &message.mtype, MAX_MSG_SIZE,
    0, IPC_NOWAIT);
  if (ret < 0) {
   if (errno == ENOMSG)
    break;
   printf("Failed to read IPC message: %m\n");
   ret = -errno;
   goto err;
  }
  if (ret != msgque->messages[cnt].msize) {
   printf("Wrong message size: %d (expected %d)\n", ret,
      msgque->messages[cnt].msize);
   ret = -EINVAL;
   goto err;
  }
  if (message.mtype != msgque->messages[cnt].mtype) {
   printf("Wrong message type\n");
   ret = -EINVAL;
   goto err;
  }
  if (memcmp(message.mtext, msgque->messages[cnt].mtext, ret)) {
   printf("Wrong message content\n");
   ret = -EINVAL;
   goto err;
  }
  cnt++;
 }

 if (cnt != msgque->qnum) {
  printf("Wrong message number\n");
  ret = -EINVAL;
  goto err;
 }

 ret = 0;
err:
 if (msgctl(msgque->msq_id, IPC_RMID, ((void*)0))) {
  printf("Failed to destroy queue: %d\n", -errno);
  return -errno;
 }
 return ret;
}
