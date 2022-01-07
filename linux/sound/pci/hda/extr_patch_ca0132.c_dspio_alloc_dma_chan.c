
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int dma_chan ;


 int EBUSY ;
 int MASTERCONTROL ;
 int MASTERCONTROL_ALLOC_DMA_CHAN ;
 int SCP_GET ;
 int codec_dbg (struct hda_codec*,char*,...) ;
 int dspio_scp (struct hda_codec*,int ,int,int ,int ,int *,int ,unsigned int*,unsigned int*) ;

__attribute__((used)) static int dspio_alloc_dma_chan(struct hda_codec *codec, unsigned int *dma_chan)
{
 int status = 0;
 unsigned int size = sizeof(dma_chan);

 codec_dbg(codec, "     dspio_alloc_dma_chan() -- begin\n");
 status = dspio_scp(codec, MASTERCONTROL, 0x20,
   MASTERCONTROL_ALLOC_DMA_CHAN, SCP_GET, ((void*)0), 0,
   dma_chan, &size);

 if (status < 0) {
  codec_dbg(codec, "dspio_alloc_dma_chan: SCP Failed\n");
  return status;
 }

 if ((*dma_chan + 1) == 0) {
  codec_dbg(codec, "no free dma channels to allocate\n");
  return -EBUSY;
 }

 codec_dbg(codec, "dspio_alloc_dma_chan: chan=%d\n", *dma_chan);
 codec_dbg(codec, "     dspio_alloc_dma_chan() -- complete\n");

 return status;
}
