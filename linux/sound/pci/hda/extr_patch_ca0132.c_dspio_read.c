
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int EIO ;
 int VENDOR_DSPIO_SCP_POST_READ_DATA ;
 int VENDOR_DSPIO_SCP_READ_DATA ;
 int VENDOR_DSPIO_STATUS ;
 int VENDOR_STATUS_DSPIO_SCP_RESPONSE_QUEUE_EMPTY ;
 int WIDGET_DSP_CTRL ;
 int dspio_send (struct hda_codec*,int ,int ) ;
 unsigned int snd_hda_codec_read (struct hda_codec*,int ,int ,int ,int ) ;

__attribute__((used)) static int dspio_read(struct hda_codec *codec, unsigned int *data)
{
 int status;

 status = dspio_send(codec, VENDOR_DSPIO_SCP_POST_READ_DATA, 0);
 if (status == -EIO)
  return status;

 status = dspio_send(codec, VENDOR_DSPIO_STATUS, 0);
 if (status == -EIO ||
     status == VENDOR_STATUS_DSPIO_SCP_RESPONSE_QUEUE_EMPTY)
  return -EIO;

 *data = snd_hda_codec_read(codec, WIDGET_DSP_CTRL, 0,
       VENDOR_DSPIO_SCP_READ_DATA, 0);

 return 0;
}
