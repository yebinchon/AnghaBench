
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_compr_caps {int * codecs; int max_fragments; int min_fragments; int max_fragment_size; int min_fragment_size; int num_codecs; } ;


 int MAX_FRAGMENT ;
 int MAX_FRAGMENT_SIZE ;
 int MIN_FRAGMENT ;
 int MIN_FRAGMENT_SIZE ;
 int NUM_CODEC ;
 int SND_AUDIOCODEC_AAC ;
 int SND_AUDIOCODEC_MP3 ;

__attribute__((used)) static int sst_cdev_caps(struct snd_compr_caps *caps)
{
 caps->num_codecs = NUM_CODEC;
 caps->min_fragment_size = MIN_FRAGMENT_SIZE;
 caps->max_fragment_size = MAX_FRAGMENT_SIZE;
 caps->min_fragments = MIN_FRAGMENT;
 caps->max_fragments = MAX_FRAGMENT;
 caps->codecs[0] = SND_AUDIOCODEC_MP3;
 caps->codecs[1] = SND_AUDIOCODEC_AAC;
 return 0;
}
