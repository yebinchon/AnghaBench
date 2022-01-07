
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_ipc_message {int header; int member_0; } ;
struct sst_byt {int ipc; } ;


 int sst_byt_header (int,int ,int,int) ;
 int sst_ipc_tx_message_nowait (int *,struct sst_ipc_message) ;
 int sst_ipc_tx_message_wait (int *,struct sst_ipc_message,int *) ;

__attribute__((used)) static int sst_byt_stream_operations(struct sst_byt *byt, int type,
         int stream_id, int wait)
{
 struct sst_ipc_message request = {0};

 request.header = sst_byt_header(type, 0, 0, stream_id);
 if (wait)
  return sst_ipc_tx_message_wait(&byt->ipc, request, ((void*)0));
 else
  return sst_ipc_tx_message_nowait(&byt->ipc, request);
}
