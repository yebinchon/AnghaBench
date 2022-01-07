
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct hvsock {scalar_t__ recv_data_off; scalar_t__ recv_data_len; TYPE_2__* vsk; scalar_t__ recv_desc; } ;
struct TYPE_3__ {scalar_t__ data_size; } ;
struct hvs_recv_buf {TYPE_1__ hdr; } ;
struct TYPE_4__ {int peer_shutdown; } ;


 int EIO ;
 scalar_t__ HVS_MTU_SIZE ;
 int SEND_SHUTDOWN ;

__attribute__((used)) static int hvs_update_recv_data(struct hvsock *hvs)
{
 struct hvs_recv_buf *recv_buf;
 u32 payload_len;

 recv_buf = (struct hvs_recv_buf *)(hvs->recv_desc + 1);
 payload_len = recv_buf->hdr.data_size;

 if (payload_len > HVS_MTU_SIZE)
  return -EIO;

 if (payload_len == 0)
  hvs->vsk->peer_shutdown |= SEND_SHUTDOWN;

 hvs->recv_data_len = payload_len;
 hvs->recv_data_off = 0;

 return 0;
}
