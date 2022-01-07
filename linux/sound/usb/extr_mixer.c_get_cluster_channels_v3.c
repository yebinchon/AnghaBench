
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct uac3_cluster_header_descriptor {int bNrChannels; } ;
struct mixer_build {TYPE_1__* chip; } ;
typedef int c_header ;
struct TYPE_3__ {int dev; } ;


 int EIO ;
 int UAC3_CS_REQ_HIGH_CAPABILITY_DESCRIPTOR ;
 int USB_DIR_IN ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 int snd_usb_ctl_msg (int ,int ,int ,int,unsigned int,int ,struct uac3_cluster_header_descriptor*,int) ;
 int snd_usb_ctrl_intf (TYPE_1__*) ;
 int usb_audio_err (TYPE_1__*,char*,unsigned int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int get_cluster_channels_v3(struct mixer_build *state, unsigned int cluster_id)
{
 struct uac3_cluster_header_descriptor c_header;
 int err;

 err = snd_usb_ctl_msg(state->chip->dev,
   usb_rcvctrlpipe(state->chip->dev, 0),
   UAC3_CS_REQ_HIGH_CAPABILITY_DESCRIPTOR,
   USB_RECIP_INTERFACE | USB_TYPE_CLASS | USB_DIR_IN,
   cluster_id,
   snd_usb_ctrl_intf(state->chip),
   &c_header, sizeof(c_header));
 if (err < 0)
  goto error;
 if (err != sizeof(c_header)) {
  err = -EIO;
  goto error;
 }

 return c_header.bNrChannels;

error:
 usb_audio_err(state->chip, "cannot request logical cluster ID: %d (err: %d)\n", cluster_id, err);
 return err;
}
