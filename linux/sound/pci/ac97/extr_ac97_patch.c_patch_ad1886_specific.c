
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dummy; } ;


 int db_scale_6bit_6db_max ;
 int reset_tlv (struct snd_ac97*,char*,int ) ;

__attribute__((used)) static int patch_ad1886_specific(struct snd_ac97 * ac97)
{
 reset_tlv(ac97, "Headphone Playback Volume",
    db_scale_6bit_6db_max);
 return 0;
}
