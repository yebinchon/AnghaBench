
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ml403_ac97cr {int * ac97; } ;
struct snd_ac97 {struct snd_ml403_ac97cr* private_data; } ;


 int INIT_INFO ;
 int PDEBUG (int ,char*) ;

__attribute__((used)) static void snd_ml403_ac97cr_mixer_free(struct snd_ac97 *ac97)
{
 struct snd_ml403_ac97cr *ml403_ac97cr = ac97->private_data;
 PDEBUG(INIT_INFO, "mixer_free():\n");
 ml403_ac97cr->ac97 = ((void*)0);
 PDEBUG(INIT_INFO, "mixer_free(): (done)\n");
}
