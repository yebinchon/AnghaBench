
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {int dummy; } ;
struct hv_vmbus_device_id {int dummy; } ;
struct hv_device {struct vmbus_channel* channel; } ;


 int hvs_open_connection (struct vmbus_channel*) ;

__attribute__((used)) static int hvs_probe(struct hv_device *hdev,
       const struct hv_vmbus_device_id *dev_id)
{
 struct vmbus_channel *chan = hdev->channel;

 hvs_open_connection(chan);






 return 0;
}
