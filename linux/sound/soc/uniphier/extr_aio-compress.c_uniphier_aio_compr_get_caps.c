
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_compr_stream {int dummy; } ;
struct snd_compr_caps {int num_codecs; int * codecs; int max_fragments; int min_fragments; int max_fragment_size; int min_fragment_size; } ;


 int AUD_MAX_FRAGMENT ;
 int AUD_MAX_FRAGMENT_SIZE ;
 int AUD_MIN_FRAGMENT ;
 int AUD_MIN_FRAGMENT_SIZE ;
 int SND_AUDIOCODEC_IEC61937 ;

__attribute__((used)) static int uniphier_aio_compr_get_caps(struct snd_compr_stream *cstream,
           struct snd_compr_caps *caps)
{
 caps->num_codecs = 1;
 caps->min_fragment_size = AUD_MIN_FRAGMENT_SIZE;
 caps->max_fragment_size = AUD_MAX_FRAGMENT_SIZE;
 caps->min_fragments = AUD_MIN_FRAGMENT;
 caps->max_fragments = AUD_MAX_FRAGMENT;
 caps->codecs[0] = SND_AUDIOCODEC_IEC61937;

 return 0;
}
