
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmbus_channel {int dummy; } ;
struct TYPE_2__ {int pkt_type; size_t data_size; } ;
struct hvs_send_buf {TYPE_1__ hdr; } ;


 int VM_PKT_DATA_INBAND ;
 int vmbus_sendpacket (struct vmbus_channel*,TYPE_1__*,int,int ,int ,int ) ;

__attribute__((used)) static int hvs_send_data(struct vmbus_channel *chan,
    struct hvs_send_buf *send_buf, size_t to_write)
{
 send_buf->hdr.pkt_type = 1;
 send_buf->hdr.data_size = to_write;
 return vmbus_sendpacket(chan, &send_buf->hdr,
    sizeof(send_buf->hdr) + to_write,
    0, VM_PKT_DATA_INBAND, 0);
}
