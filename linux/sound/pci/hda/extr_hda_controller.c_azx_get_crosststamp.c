
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct system_device_crosststamp {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;


 int azx_get_sync_time ;
 int get_device_system_crosststamp (int ,struct snd_pcm_substream*,int *,struct system_device_crosststamp*) ;

__attribute__((used)) static int azx_get_crosststamp(struct snd_pcm_substream *substream,
         struct system_device_crosststamp *xtstamp)
{
 return get_device_system_crosststamp(azx_get_sync_time,
     substream, ((void*)0), xtstamp);
}
