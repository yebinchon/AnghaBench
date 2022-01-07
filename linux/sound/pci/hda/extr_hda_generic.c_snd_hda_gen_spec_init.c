
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol_new {int dummy; } ;
struct nid_path {int dummy; } ;
struct hda_gen_spec {int pcm_mutex; int loopback_list; int paths; int kctls; } ;
struct hda_amp_list {int dummy; } ;


 int mutex_init (int *) ;
 int snd_array_init (int *,int,int) ;

int snd_hda_gen_spec_init(struct hda_gen_spec *spec)
{
 snd_array_init(&spec->kctls, sizeof(struct snd_kcontrol_new), 32);
 snd_array_init(&spec->paths, sizeof(struct nid_path), 8);
 snd_array_init(&spec->loopback_list, sizeof(struct hda_amp_list), 8);
 mutex_init(&spec->pcm_mutex);
 return 0;
}
