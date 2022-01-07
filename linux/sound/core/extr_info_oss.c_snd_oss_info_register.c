
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int SNDRV_CARDS ;
 int SNDRV_OSS_INFO_DEV_COUNT ;
 int kfree (char*) ;
 char* kstrdup (char*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ snd_BUG_ON (int) ;
 char*** snd_sndstat_strings ;
 int strings ;

int snd_oss_info_register(int dev, int num, char *string)
{
 char *x;

 if (snd_BUG_ON(dev < 0 || dev >= SNDRV_OSS_INFO_DEV_COUNT))
  return -ENXIO;
 if (snd_BUG_ON(num < 0 || num >= SNDRV_CARDS))
  return -ENXIO;
 mutex_lock(&strings);
 if (string == ((void*)0)) {
  if ((x = snd_sndstat_strings[num][dev]) != ((void*)0)) {
   kfree(x);
   x = ((void*)0);
  }
 } else {
  x = kstrdup(string, GFP_KERNEL);
  if (x == ((void*)0)) {
   mutex_unlock(&strings);
   return -ENOMEM;
  }
 }
 snd_sndstat_strings[num][dev] = x;
 mutex_unlock(&strings);
 return 0;
}
