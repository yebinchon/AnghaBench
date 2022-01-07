
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rawmidi_info {int dummy; } ;
struct snd_card {int dummy; } ;


 int __snd_rawmidi_info_select (struct snd_card*,struct snd_rawmidi_info*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int register_mutex ;

int snd_rawmidi_info_select(struct snd_card *card, struct snd_rawmidi_info *info)
{
 int ret;

 mutex_lock(&register_mutex);
 ret = __snd_rawmidi_info_select(card, info);
 mutex_unlock(&register_mutex);
 return ret;
}
