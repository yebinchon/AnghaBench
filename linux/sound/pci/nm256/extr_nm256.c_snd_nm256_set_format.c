
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int channels; int rate; int format; } ;
struct nm256_stream {scalar_t__ shift; } ;
struct nm256 {int dummy; } ;


 scalar_t__ NM_PLAYBACK_REG_OFFSET ;
 unsigned char NM_RATE_BITS_16 ;
 int NM_RATE_MASK ;
 scalar_t__ NM_RATE_REG_OFFSET ;
 unsigned char NM_RATE_STEREO ;
 scalar_t__ NM_RECORD_REG_OFFSET ;


 int * samplerates ;
 int snd_nm256_fixed_rate (int ) ;
 int snd_nm256_load_coefficient (struct nm256*,int,int) ;
 int snd_nm256_writeb (struct nm256*,scalar_t__,unsigned char) ;
 int snd_pcm_format_width (int ) ;

__attribute__((used)) static void
snd_nm256_set_format(struct nm256 *chip, struct nm256_stream *s,
       struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 int rate_index = snd_nm256_fixed_rate(runtime->rate);
 unsigned char ratebits = (rate_index << 4) & NM_RATE_MASK;

 s->shift = 0;
 if (snd_pcm_format_width(runtime->format) == 16) {
  ratebits |= NM_RATE_BITS_16;
  s->shift++;
 }
 if (runtime->channels > 1) {
  ratebits |= NM_RATE_STEREO;
  s->shift++;
 }

 runtime->rate = samplerates[rate_index];

 switch (substream->stream) {
 case 128:
  snd_nm256_load_coefficient(chip, 0, rate_index);
  snd_nm256_writeb(chip,
     NM_PLAYBACK_REG_OFFSET + NM_RATE_REG_OFFSET,
     ratebits);
  break;
 case 129:
  snd_nm256_load_coefficient(chip, 1, rate_index);
  snd_nm256_writeb(chip,
     NM_RECORD_REG_OFFSET + NM_RATE_REG_OFFSET,
     ratebits);
  break;
 }
}
