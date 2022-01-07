
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsock_sock {struct hvsock* trans; } ;
struct vmbus_channel {int dummy; } ;
struct hvsock {struct vmbus_channel* chan; } ;


 int kfree (struct hvsock*) ;
 int vmbus_hvsock_device_unregister (struct vmbus_channel*) ;

__attribute__((used)) static void hvs_destruct(struct vsock_sock *vsk)
{
 struct hvsock *hvs = vsk->trans;
 struct vmbus_channel *chan = hvs->chan;

 if (chan)
  vmbus_hvsock_device_unregister(chan);

 kfree(hvs);
}
