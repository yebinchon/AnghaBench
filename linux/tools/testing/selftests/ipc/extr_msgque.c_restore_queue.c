
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msgque_data {int msq_id; int mode; int qnum; TYPE_1__* messages; int key; } ;
struct TYPE_2__ {int msize; int mtype; } ;


 int EFAULT ;
 int IPC_CREAT ;
 int IPC_EXCL ;
 int IPC_NOWAIT ;
 int IPC_RMID ;
 int O_WRONLY ;
 int errno ;
 scalar_t__ msgctl (int,int ,int *) ;
 int msgget (int ,int) ;
 scalar_t__ msgsnd (int,int *,int ,int ) ;
 int open (char*,int ) ;
 int printf (char*,...) ;
 int sprintf (char*,char*,int) ;
 int strlen (char*) ;
 int write (int,char*,int) ;

int restore_queue(struct msgque_data *msgque)
{
 int fd, ret, id, i;
 char buf[32];

 fd = open("/proc/sys/kernel/msg_next_id", O_WRONLY);
 if (fd == -1) {
  printf("Failed to open /proc/sys/kernel/msg_next_id\n");
  return -errno;
 }
 sprintf(buf, "%d", msgque->msq_id);

 ret = write(fd, buf, strlen(buf));
 if (ret != strlen(buf)) {
  printf("Failed to write to /proc/sys/kernel/msg_next_id\n");
  return -errno;
 }

 id = msgget(msgque->key, msgque->mode | IPC_CREAT | IPC_EXCL);
 if (id == -1) {
  printf("Failed to create queue\n");
  return -errno;
 }

 if (id != msgque->msq_id) {
  printf("Restored queue has wrong id (%d instead of %d)\n",
       id, msgque->msq_id);
  ret = -EFAULT;
  goto destroy;
 }

 for (i = 0; i < msgque->qnum; i++) {
  if (msgsnd(msgque->msq_id, &msgque->messages[i].mtype,
      msgque->messages[i].msize, IPC_NOWAIT) != 0) {
   printf("msgsnd failed (%m)\n");
   ret = -errno;
   goto destroy;
  };
 }
 return 0;

destroy:
 if (msgctl(id, IPC_RMID, ((void*)0)))
  printf("Failed to destroy queue: %d\n", -errno);
 return ret;
}
