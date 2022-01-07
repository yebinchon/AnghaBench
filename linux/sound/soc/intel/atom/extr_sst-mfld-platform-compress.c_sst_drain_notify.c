
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_compr_stream {int dummy; } ;


 int pr_debug (char*) ;
 int snd_compr_drain_notify (struct snd_compr_stream*) ;

__attribute__((used)) static void sst_drain_notify(void *arg)
{
 struct snd_compr_stream *cstream = (struct snd_compr_stream *)arg;

 pr_debug("drain notify by driver\n");
 if (cstream)
  snd_compr_drain_notify(cstream);
}
