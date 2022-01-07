
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_sof_ipc {int tx_mutex; } ;


 int ENOBUFS ;
 size_t SOF_IPC_MSG_MAX_SIZE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sof_ipc_tx_message_unlocked (struct snd_sof_ipc*,int ,void*,size_t,void*,size_t) ;

int sof_ipc_tx_message(struct snd_sof_ipc *ipc, u32 header,
         void *msg_data, size_t msg_bytes, void *reply_data,
         size_t reply_bytes)
{
 int ret;

 if (msg_bytes > SOF_IPC_MSG_MAX_SIZE ||
     reply_bytes > SOF_IPC_MSG_MAX_SIZE)
  return -ENOBUFS;


 mutex_lock(&ipc->tx_mutex);

 ret = sof_ipc_tx_message_unlocked(ipc, header, msg_data, msg_bytes,
       reply_data, reply_bytes);

 mutex_unlock(&ipc->tx_mutex);

 return ret;
}
