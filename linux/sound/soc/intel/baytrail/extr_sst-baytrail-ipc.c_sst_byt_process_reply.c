
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct sst_byt {int ipc; int dsp; } ;
struct TYPE_2__ {int header; int size; int data; } ;
struct ipc_message {int list; TYPE_1__ rx; } ;


 int IPC_HEADER_LARGE (int) ;
 int list_del (int *) ;
 int sst_byt_header_data (int) ;
 int sst_byt_stream_update (struct sst_byt*,struct ipc_message*) ;
 int sst_dsp_inbox_read (int ,int ,int ) ;
 struct ipc_message* sst_ipc_reply_find_msg (int *,int) ;
 int sst_ipc_tx_msg_reply_complete (int *,struct ipc_message*) ;

__attribute__((used)) static int sst_byt_process_reply(struct sst_byt *byt, u64 header)
{
 struct ipc_message *msg;

 msg = sst_ipc_reply_find_msg(&byt->ipc, header);
 if (msg == ((void*)0))
  return 1;

 msg->rx.header = header;
 if (header & IPC_HEADER_LARGE(1)) {
  msg->rx.size = sst_byt_header_data(header);
  sst_dsp_inbox_read(byt->dsp, msg->rx.data, msg->rx.size);
 }


 sst_byt_stream_update(byt, msg);

 list_del(&msg->list);

 sst_ipc_tx_msg_reply_complete(&byt->ipc, msg);

 return 1;
}
