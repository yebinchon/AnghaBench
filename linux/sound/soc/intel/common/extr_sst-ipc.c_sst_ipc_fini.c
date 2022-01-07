
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sst_generic_ipc {TYPE_3__* msg; int kwork; } ;
struct TYPE_5__ {TYPE_3__* data; } ;
struct TYPE_4__ {TYPE_3__* data; } ;
struct TYPE_6__ {TYPE_2__ rx; TYPE_1__ tx; } ;


 int IPC_EMPTY_LIST_SIZE ;
 int cancel_work_sync (int *) ;
 int kfree (TYPE_3__*) ;

void sst_ipc_fini(struct sst_generic_ipc *ipc)
{
 int i;

 cancel_work_sync(&ipc->kwork);

 if (ipc->msg) {
  for (i = 0; i < IPC_EMPTY_LIST_SIZE; i++) {
   kfree(ipc->msg[i].tx.data);
   kfree(ipc->msg[i].rx.data);
  }
  kfree(ipc->msg);
 }
}
