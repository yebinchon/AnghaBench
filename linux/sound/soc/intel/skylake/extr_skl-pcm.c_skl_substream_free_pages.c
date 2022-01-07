
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct hdac_bus {int dummy; } ;


 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;

__attribute__((used)) static int skl_substream_free_pages(struct hdac_bus *bus,
    struct snd_pcm_substream *substream)
{
 return snd_pcm_lib_free_pages(substream);
}
