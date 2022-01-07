
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int stream; } ;
struct alchemy_pcm_ctx {TYPE_1__* stream; } ;
struct TYPE_2__ {int dma; int * substream; } ;


 int free_au1000_dma (int ) ;
 struct alchemy_pcm_ctx* ss_to_ctx (struct snd_pcm_substream*) ;

__attribute__((used)) static int alchemy_pcm_close(struct snd_pcm_substream *substream)
{
 struct alchemy_pcm_ctx *ctx = ss_to_ctx(substream);
 int stype = substream->stream;

 ctx->stream[stype].substream = ((void*)0);
 free_au1000_dma(ctx->stream[stype].dma);

 return 0;
}
