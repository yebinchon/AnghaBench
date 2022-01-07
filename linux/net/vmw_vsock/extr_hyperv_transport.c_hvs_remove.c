
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {int dummy; } ;
struct hv_device {struct vmbus_channel* channel; } ;


 int vmbus_close (struct vmbus_channel*) ;

__attribute__((used)) static int hvs_remove(struct hv_device *hdev)
{
 struct vmbus_channel *chan = hdev->channel;

 vmbus_close(chan);

 return 0;
}
