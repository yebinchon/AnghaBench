
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {int chipio_mutex; } ;


 int EIO ;
 int VENDOR_DSPIO_SCP_WRITE_DATA_HIGH ;
 int VENDOR_DSPIO_SCP_WRITE_DATA_LOW ;
 int VENDOR_DSPIO_STATUS ;
 int VENDOR_STATUS_DSPIO_SCP_COMMAND_QUEUE_FULL ;
 int WIDGET_DSP_CTRL ;
 int dspio_send (struct hda_codec*,int ,unsigned int) ;
 int dspio_write_wait (struct hda_codec*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_hda_codec_read (struct hda_codec*,int ,int ,int ,int ) ;

__attribute__((used)) static int dspio_write(struct hda_codec *codec, unsigned int scp_data)
{
 struct ca0132_spec *spec = codec->spec;
 int status;

 dspio_write_wait(codec);

 mutex_lock(&spec->chipio_mutex);
 status = dspio_send(codec, VENDOR_DSPIO_SCP_WRITE_DATA_LOW,
       scp_data & 0xffff);
 if (status < 0)
  goto error;

 status = dspio_send(codec, VENDOR_DSPIO_SCP_WRITE_DATA_HIGH,
        scp_data >> 16);
 if (status < 0)
  goto error;


 status = snd_hda_codec_read(codec, WIDGET_DSP_CTRL, 0,
        VENDOR_DSPIO_STATUS, 0);
error:
 mutex_unlock(&spec->chipio_mutex);

 return (status == VENDOR_STATUS_DSPIO_SCP_COMMAND_QUEUE_FULL) ?
   -EIO : 0;
}
