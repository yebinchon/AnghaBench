
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ali {int card; } ;


 int snd_ali_proc_read ;
 int snd_card_ro_proc_new (int ,char*,struct snd_ali*,int ) ;

__attribute__((used)) static void snd_ali_proc_init(struct snd_ali *codec)
{
 snd_card_ro_proc_new(codec->card, "ali5451", codec, snd_ali_proc_read);
}
