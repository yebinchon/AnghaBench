
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct lola_stream {scalar_t__ format_verb; scalar_t__ period_bytes; scalar_t__ bufsize; } ;


 struct lola_stream* lola_get_stream (struct snd_pcm_substream*) ;
 int params_buffer_bytes (struct snd_pcm_hw_params*) ;
 int snd_pcm_lib_malloc_pages (struct snd_pcm_substream*,int ) ;

__attribute__((used)) static int lola_pcm_hw_params(struct snd_pcm_substream *substream,
         struct snd_pcm_hw_params *hw_params)
{
 struct lola_stream *str = lola_get_stream(substream);

 str->bufsize = 0;
 str->period_bytes = 0;
 str->format_verb = 0;
 return snd_pcm_lib_malloc_pages(substream,
     params_buffer_bytes(hw_params));
}
