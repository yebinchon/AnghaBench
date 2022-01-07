
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 unsigned int DSPDMAC_CHNLSTART_DIS_MASK ;
 unsigned int DSPDMAC_CHNLSTART_EN_LOBIT ;
 unsigned int DSPDMAC_CHNLSTART_EN_MASK ;
 int DSPDMAC_CHNLSTART_INST_OFFSET ;
 int chipio_read (struct hda_codec*,int ,unsigned int*) ;
 int chipio_write (struct hda_codec*,int ,unsigned int) ;
 int codec_dbg (struct hda_codec*,char*) ;

__attribute__((used)) static int dsp_dma_start(struct hda_codec *codec,
    unsigned int dma_chan, bool ovly)
{
 unsigned int reg = 0;
 int status = 0;

 codec_dbg(codec, "-- dsp_dma_start() -- Begin ---------\n");

 if (ovly) {
  status = chipio_read(codec,
         DSPDMAC_CHNLSTART_INST_OFFSET, &reg);

  if (status < 0) {
   codec_dbg(codec, "read CHNLSTART reg fail\n");
   return status;
  }
  codec_dbg(codec, "-- dsp_dma_start()    Read CHNLSTART\n");

  reg &= ~(DSPDMAC_CHNLSTART_EN_MASK |
    DSPDMAC_CHNLSTART_DIS_MASK);
 }

 status = chipio_write(codec, DSPDMAC_CHNLSTART_INST_OFFSET,
   reg | (1 << (dma_chan + DSPDMAC_CHNLSTART_EN_LOBIT)));
 if (status < 0) {
  codec_dbg(codec, "write CHNLSTART reg fail\n");
  return status;
 }
 codec_dbg(codec, "-- dsp_dma_start() -- Complete ---------\n");

 return status;
}
