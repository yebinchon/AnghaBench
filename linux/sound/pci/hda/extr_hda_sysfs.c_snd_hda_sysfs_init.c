
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_verb {int dummy; } ;
struct hda_pincfg {int dummy; } ;
struct hda_hint {int dummy; } ;
struct hda_codec {int user_pins; int hints; int init_verbs; int user_mutex; } ;


 int mutex_init (int *) ;
 int snd_array_init (int *,int,int) ;

void snd_hda_sysfs_init(struct hda_codec *codec)
{
 mutex_init(&codec->user_mutex);





}
