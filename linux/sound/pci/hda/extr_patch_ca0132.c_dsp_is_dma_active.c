
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 unsigned int DSPDMAC_CHNLSTART_EN_LOBIT ;
 int DSPDMAC_CHNLSTART_INST_OFFSET ;
 int chipio_read (struct hda_codec*,int ,unsigned int*) ;

__attribute__((used)) static bool dsp_is_dma_active(struct hda_codec *codec, unsigned int dma_chan)
{
 unsigned int dma_chnlstart_reg;

 chipio_read(codec, DSPDMAC_CHNLSTART_INST_OFFSET, &dma_chnlstart_reg);

 return ((dma_chnlstart_reg & (1 <<
   (DSPDMAC_CHNLSTART_EN_LOBIT + dma_chan))) != 0);
}
