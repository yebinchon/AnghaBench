
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_substream {int data_endpoint; int sync_endpoint; int flags; } ;


 int SUBSTREAM_FLAG_DATA_EP_STARTED ;
 int SUBSTREAM_FLAG_SYNC_EP_STARTED ;
 int snd_usb_endpoint_stop (int ) ;
 int snd_usb_endpoint_sync_pending_stop (int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void stop_endpoints(struct snd_usb_substream *subs, bool wait)
{
 if (test_and_clear_bit(SUBSTREAM_FLAG_SYNC_EP_STARTED, &subs->flags))
  snd_usb_endpoint_stop(subs->sync_endpoint);

 if (test_and_clear_bit(SUBSTREAM_FLAG_DATA_EP_STARTED, &subs->flags))
  snd_usb_endpoint_stop(subs->data_endpoint);

 if (wait) {
  snd_usb_endpoint_sync_pending_stop(subs->sync_endpoint);
  snd_usb_endpoint_sync_pending_stop(subs->data_endpoint);
 }
}
