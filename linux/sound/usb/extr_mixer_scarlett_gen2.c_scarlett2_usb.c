
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct usb_mixer_interface {TYPE_1__* chip; struct scarlett2_mixer_data* private_data; } ;
struct scarlett2_usb_packet {void* data; scalar_t__ cmd; scalar_t__ seq; scalar_t__ size; scalar_t__ error; scalar_t__ pad; } ;
struct scarlett2_mixer_data {int usb_mutex; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SCARLETT2_USB_VENDOR_SPECIFIC_CMD_REQ ;
 int SCARLETT2_USB_VENDOR_SPECIFIC_CMD_RESP ;
 int SCARLETT2_USB_VENDOR_SPECIFIC_INTERFACE ;
 int USB_DIR_IN ;
 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 int kfree (struct scarlett2_usb_packet*) ;
 struct scarlett2_usb_packet* kmalloc (int,int ) ;
 int le16_to_cpu (scalar_t__) ;
 int memcpy (void*,void*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int scarlett2_fill_request_header (struct scarlett2_mixer_data*,struct scarlett2_usb_packet*,int ,int) ;
 int snd_usb_ctl_msg (int ,int ,int ,int,int ,int ,struct scarlett2_usb_packet*,int) ;
 int usb_audio_err (TYPE_1__*,char*,int,int,...) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int scarlett2_usb(
 struct usb_mixer_interface *mixer, u32 cmd,
 void *req_data, u16 req_size, void *resp_data, u16 resp_size)
{
 struct scarlett2_mixer_data *private = mixer->private_data;
 u16 req_buf_size = sizeof(struct scarlett2_usb_packet) + req_size;
 u16 resp_buf_size = sizeof(struct scarlett2_usb_packet) + resp_size;
 struct scarlett2_usb_packet *req = ((void*)0), *resp = ((void*)0);
 int err = 0;

 req = kmalloc(req_buf_size, GFP_KERNEL);
 if (!req) {
  err = -ENOMEM;
  goto error;
 }

 resp = kmalloc(resp_buf_size, GFP_KERNEL);
 if (!resp) {
  err = -ENOMEM;
  goto error;
 }

 mutex_lock(&private->usb_mutex);



 scarlett2_fill_request_header(private, req, cmd, req_size);

 if (req_size)
  memcpy(req->data, req_data, req_size);

 err = snd_usb_ctl_msg(mixer->chip->dev,
   usb_sndctrlpipe(mixer->chip->dev, 0),
   SCARLETT2_USB_VENDOR_SPECIFIC_CMD_REQ,
   USB_RECIP_INTERFACE | USB_TYPE_CLASS | USB_DIR_OUT,
   0,
   SCARLETT2_USB_VENDOR_SPECIFIC_INTERFACE,
   req,
   req_buf_size);

 if (err != req_buf_size) {
  usb_audio_err(
   mixer->chip,
   "Scarlett Gen 2 USB request result cmd %x was %d\n",
   cmd, err);
  err = -EINVAL;
  goto unlock;
 }



 err = snd_usb_ctl_msg(mixer->chip->dev,
   usb_sndctrlpipe(mixer->chip->dev, 0),
   SCARLETT2_USB_VENDOR_SPECIFIC_CMD_RESP,
   USB_RECIP_INTERFACE | USB_TYPE_CLASS | USB_DIR_IN,
   0,
   SCARLETT2_USB_VENDOR_SPECIFIC_INTERFACE,
   resp,
   resp_buf_size);



 if (err != resp_buf_size) {
  usb_audio_err(
   mixer->chip,
   "Scarlett Gen 2 USB response result cmd %x was %d\n",
   cmd, err);
  err = -EINVAL;
  goto unlock;
 }

 if (resp->cmd != req->cmd ||
     resp->seq != req->seq ||
     resp_size != le16_to_cpu(resp->size) ||
     resp->error ||
     resp->pad) {
  usb_audio_err(
   mixer->chip,
   "Scarlett Gen 2 USB invalid response; "
      "cmd tx/rx %d/%d seq %d/%d size %d/%d "
      "error %d pad %d\n",
   le16_to_cpu(req->cmd), le16_to_cpu(resp->cmd),
   le16_to_cpu(req->seq), le16_to_cpu(resp->seq),
   resp_size, le16_to_cpu(resp->size),
   le16_to_cpu(resp->error),
   le16_to_cpu(resp->pad));
  err = -EINVAL;
  goto unlock;
 }

 if (resp_size > 0)
  memcpy(resp_data, resp->data, resp_size);

unlock:
 mutex_unlock(&private->usb_mutex);
error:
 kfree(req);
 kfree(resp);
 return err;
}
