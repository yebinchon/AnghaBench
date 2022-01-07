
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int dma_chan ;


 int MASTERCONTROL ;
 int MASTERCONTROL_ALLOC_DMA_CHAN ;
 int SCP_SET ;
 int codec_dbg (struct hda_codec*,char*,...) ;
 int dspio_scp (struct hda_codec*,int ,int,int ,int ,unsigned int*,int,int *,unsigned int*) ;

__attribute__((used)) static int dspio_free_dma_chan(struct hda_codec *codec, unsigned int dma_chan)
{
 int status = 0;
 unsigned int dummy = 0;

 codec_dbg(codec, "     dspio_free_dma_chan() -- begin\n");
 codec_dbg(codec, "dspio_free_dma_chan: chan=%d\n", dma_chan);

 status = dspio_scp(codec, MASTERCONTROL, 0x20,
   MASTERCONTROL_ALLOC_DMA_CHAN, SCP_SET, &dma_chan,
   sizeof(dma_chan), ((void*)0), &dummy);

 if (status < 0) {
  codec_dbg(codec, "dspio_free_dma_chan: SCP Failed\n");
  return status;
 }

 codec_dbg(codec, "     dspio_free_dma_chan() -- complete\n");

 return status;
}
