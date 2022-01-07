
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_compr_stream {int dummy; } ;


 int pr_debug (char*) ;
 int snd_compr_fragment_elapsed (struct snd_compr_stream*) ;

__attribute__((used)) static void sst_compr_fragment_elapsed(void *arg)
{
 struct snd_compr_stream *cstream = (struct snd_compr_stream *)arg;

 pr_debug("fragment elapsed by driver\n");
 if (cstream)
  snd_compr_fragment_elapsed(cstream);
}
