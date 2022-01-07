
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int jackpoll_interval; } ;


 int msecs_to_jiffies (int) ;
 int snd_hda_gen_build_controls (struct hda_codec*) ;

__attribute__((used)) static int vt1708_build_controls(struct hda_codec *codec)
{


 int err;
 int old_interval = codec->jackpoll_interval;
 codec->jackpoll_interval = msecs_to_jiffies(100);
 err = snd_hda_gen_build_controls(codec);
 codec->jackpoll_interval = old_interval;
 return err;
}
