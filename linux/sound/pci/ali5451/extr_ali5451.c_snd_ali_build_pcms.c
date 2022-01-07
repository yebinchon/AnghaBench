
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ali {int num_of_codecs; } ;


 int ARRAY_SIZE (int *) ;
 int * ali_pcms ;
 int snd_ali_pcm (struct snd_ali*,int,int *) ;

__attribute__((used)) static int snd_ali_build_pcms(struct snd_ali *codec)
{
 int i, err;
 for (i = 0; i < codec->num_of_codecs && i < ARRAY_SIZE(ali_pcms); i++) {
  err = snd_ali_pcm(codec, i, &ali_pcms[i]);
  if (err < 0)
   return err;
 }
 return 0;
}
