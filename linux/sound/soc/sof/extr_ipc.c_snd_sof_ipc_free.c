
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sof_ipc {int disable_ipc_tx; int tx_mutex; } ;
struct snd_sof_dev {struct snd_sof_ipc* ipc; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void snd_sof_ipc_free(struct snd_sof_dev *sdev)
{
 struct snd_sof_ipc *ipc = sdev->ipc;


 mutex_lock(&ipc->tx_mutex);
 ipc->disable_ipc_tx = 1;
 mutex_unlock(&ipc->tx_mutex);
}
