
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_compr_stream {int dummy; } ;
struct snd_compr_caps {int num_codecs; int * codecs; int max_fragments; int min_fragments; int max_fragment_size; int min_fragment_size; int direction; } ;


 int COMPR_PLAYBACK_MAX_FRAGMENT_SIZE ;
 int COMPR_PLAYBACK_MAX_NUM_FRAGMENTS ;
 int COMPR_PLAYBACK_MIN_FRAGMENT_SIZE ;
 int COMPR_PLAYBACK_MIN_NUM_FRAGMENTS ;
 int SND_AUDIOCODEC_MP3 ;
 int SND_COMPRESS_PLAYBACK ;

__attribute__((used)) static int q6asm_dai_compr_get_caps(struct snd_compr_stream *stream,
        struct snd_compr_caps *caps)
{
 caps->direction = SND_COMPRESS_PLAYBACK;
 caps->min_fragment_size = COMPR_PLAYBACK_MIN_FRAGMENT_SIZE;
 caps->max_fragment_size = COMPR_PLAYBACK_MAX_FRAGMENT_SIZE;
 caps->min_fragments = COMPR_PLAYBACK_MIN_NUM_FRAGMENTS;
 caps->max_fragments = COMPR_PLAYBACK_MAX_NUM_FRAGMENTS;
 caps->num_codecs = 1;
 caps->codecs[0] = SND_AUDIOCODEC_MP3;

 return 0;
}
