
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 unsigned int EIO ;
 int VENDOR_DSPIO_DSP_INIT ;
 int codec_dbg (struct hda_codec*,char*) ;
 unsigned int dspio_send (struct hda_codec*,int ,int ) ;

__attribute__((used)) static int dsp_reset(struct hda_codec *codec)
{
 unsigned int res;
 int retry = 20;

 codec_dbg(codec, "dsp_reset\n");
 do {
  res = dspio_send(codec, VENDOR_DSPIO_DSP_INIT, 0);
  retry--;
 } while (res == -EIO && retry);

 if (!retry) {
  codec_dbg(codec, "dsp_reset timeout\n");
  return -EIO;
 }

 return 0;
}
