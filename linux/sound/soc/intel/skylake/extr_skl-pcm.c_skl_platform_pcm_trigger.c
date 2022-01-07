
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct hdac_bus {int ppcap; } ;


 struct hdac_bus* get_bus_ctx (struct snd_pcm_substream*) ;
 int skl_coupled_trigger (struct snd_pcm_substream*,int) ;

__attribute__((used)) static int skl_platform_pcm_trigger(struct snd_pcm_substream *substream,
     int cmd)
{
 struct hdac_bus *bus = get_bus_ctx(substream);

 if (!bus->ppcap)
  return skl_coupled_trigger(substream, cmd);

 return 0;
}
