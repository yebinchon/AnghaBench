
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_usb_substream {int flags; struct snd_usb_endpoint* data_endpoint; TYPE_1__* dev; struct snd_usb_endpoint* sync_endpoint; } ;
struct snd_usb_endpoint {scalar_t__ iface; scalar_t__ altsetting; struct snd_usb_endpoint* sync_slave; struct snd_usb_substream* data_subs; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int EIO ;
 int SUBSTREAM_FLAG_DATA_EP_STARTED ;
 int SUBSTREAM_FLAG_SYNC_EP_STARTED ;
 int clear_bit (int ,int *) ;
 int dev_dbg (int *,char*,struct snd_usb_endpoint*) ;
 int dev_err (int *,char*,scalar_t__,scalar_t__,int) ;
 int snd_usb_endpoint_start (struct snd_usb_endpoint*) ;
 int test_and_set_bit (int ,int *) ;
 int usb_set_interface (TYPE_1__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int start_endpoints(struct snd_usb_substream *subs)
{
 int err;

 if (!subs->data_endpoint)
  return -EINVAL;

 if (!test_and_set_bit(SUBSTREAM_FLAG_DATA_EP_STARTED, &subs->flags)) {
  struct snd_usb_endpoint *ep = subs->data_endpoint;

  dev_dbg(&subs->dev->dev, "Starting data EP @%p\n", ep);

  ep->data_subs = subs;
  err = snd_usb_endpoint_start(ep);
  if (err < 0) {
   clear_bit(SUBSTREAM_FLAG_DATA_EP_STARTED, &subs->flags);
   return err;
  }
 }

 if (subs->sync_endpoint &&
     !test_and_set_bit(SUBSTREAM_FLAG_SYNC_EP_STARTED, &subs->flags)) {
  struct snd_usb_endpoint *ep = subs->sync_endpoint;

  if (subs->data_endpoint->iface != subs->sync_endpoint->iface ||
      subs->data_endpoint->altsetting != subs->sync_endpoint->altsetting) {
   err = usb_set_interface(subs->dev,
      subs->sync_endpoint->iface,
      subs->sync_endpoint->altsetting);
   if (err < 0) {
    clear_bit(SUBSTREAM_FLAG_SYNC_EP_STARTED, &subs->flags);
    dev_err(&subs->dev->dev,
        "%d:%d: cannot set interface (%d)\n",
        subs->sync_endpoint->iface,
        subs->sync_endpoint->altsetting, err);
    return -EIO;
   }
  }

  dev_dbg(&subs->dev->dev, "Starting sync EP @%p\n", ep);

  ep->sync_slave = subs->data_endpoint;
  err = snd_usb_endpoint_start(ep);
  if (err < 0) {
   clear_bit(SUBSTREAM_FLAG_SYNC_EP_STARTED, &subs->flags);
   return err;
  }
 }

 return 0;
}
