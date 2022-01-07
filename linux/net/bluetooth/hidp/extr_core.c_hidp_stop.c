
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hidp_session {int intr_transmit; int ctrl_transmit; } ;
struct hid_device {scalar_t__ claimed; struct hidp_session* driver_data; } ;


 int skb_queue_purge (int *) ;

__attribute__((used)) static void hidp_stop(struct hid_device *hid)
{
 struct hidp_session *session = hid->driver_data;

 skb_queue_purge(&session->ctrl_transmit);
 skb_queue_purge(&session->intr_transmit);

 hid->claimed = 0;
}
