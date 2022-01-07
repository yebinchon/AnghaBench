
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_compr_stream {int direction; } ;
struct snd_compr_caps {int num_codecs; int * codecs; int max_fragments; int min_fragments; int max_fragment_size; int min_fragment_size; int direction; } ;


 int SND_AUDIOCODEC_AAC ;
 int SND_AUDIOCODEC_MP3 ;
 int SPRD_COMPR_MAX_FRAGMENT_SIZE ;
 int SPRD_COMPR_MAX_NUM_FRAGMENTS ;
 int SPRD_COMPR_MIN_FRAGMENT_SIZE ;
 int SPRD_COMPR_MIN_NUM_FRAGMENTS ;

__attribute__((used)) static int sprd_platform_compr_get_caps(struct snd_compr_stream *cstream,
     struct snd_compr_caps *caps)
{
 caps->direction = cstream->direction;
 caps->min_fragment_size = SPRD_COMPR_MIN_FRAGMENT_SIZE;
 caps->max_fragment_size = SPRD_COMPR_MAX_FRAGMENT_SIZE;
 caps->min_fragments = SPRD_COMPR_MIN_NUM_FRAGMENTS;
 caps->max_fragments = SPRD_COMPR_MAX_NUM_FRAGMENTS;
 caps->num_codecs = 2;
 caps->codecs[0] = SND_AUDIOCODEC_MP3;
 caps->codecs[1] = SND_AUDIOCODEC_AAC;

 return 0;
}
