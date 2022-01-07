
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_gus_voice {int use; int pcm; int synth; int client; int port; int midi; } ;
struct TYPE_2__ {int pcm_alloc_voices; } ;
struct snd_gus_card {TYPE_1__ gf1; } ;






__attribute__((used)) static void snd_gf1_alloc_voice_use(struct snd_gus_card * gus,
        struct snd_gus_voice * pvoice,
        int type, int client, int port)
{
 pvoice->use = 1;
 switch (type) {
 case 129:
  gus->gf1.pcm_alloc_voices++;
  pvoice->pcm = 1;
  break;
 case 128:
  pvoice->synth = 1;
  pvoice->client = client;
  pvoice->port = port;
  break;
 case 130:
  pvoice->midi = 1;
  pvoice->client = client;
  pvoice->port = port;
  break;
 }
}
