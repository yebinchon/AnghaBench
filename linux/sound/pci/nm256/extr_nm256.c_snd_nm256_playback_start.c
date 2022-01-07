
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct nm256_stream {int shift; scalar_t__ buf; scalar_t__ dma_size; } ;
struct nm256 {int dummy; } ;


 int NM_AUDIO_MUTE_REG ;
 int NM_PBUFFER_CURRP ;
 int NM_PBUFFER_END ;
 int NM_PBUFFER_START ;
 int NM_PLAYBACK_ENABLE_FLAG ;
 int NM_PLAYBACK_ENABLE_REG ;
 int NM_PLAYBACK_FREERUN ;
 int snd_nm256_playback_mark (struct nm256*,struct nm256_stream*) ;
 int snd_nm256_writeb (struct nm256*,int ,int) ;
 int snd_nm256_writel (struct nm256*,int ,scalar_t__) ;
 int snd_nm256_writew (struct nm256*,int ,int) ;

__attribute__((used)) static void
snd_nm256_playback_start(struct nm256 *chip, struct nm256_stream *s,
    struct snd_pcm_substream *substream)
{

 snd_nm256_writel(chip, NM_PBUFFER_START, s->buf);
 snd_nm256_writel(chip, NM_PBUFFER_END, s->buf + s->dma_size - (1 << s->shift));
 snd_nm256_writel(chip, NM_PBUFFER_CURRP, s->buf);
 snd_nm256_playback_mark(chip, s);


 snd_nm256_writeb(chip, NM_PLAYBACK_ENABLE_REG,
    NM_PLAYBACK_ENABLE_FLAG | NM_PLAYBACK_FREERUN);

 snd_nm256_writew(chip, NM_AUDIO_MUTE_REG, 0x0);
}
