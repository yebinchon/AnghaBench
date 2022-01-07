
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_bebob {int unit; } ;


 int avc_audio_get_selector (int ,int ,int,unsigned int*) ;

__attribute__((used)) static int
phase88_rack_clk_src_get(struct snd_bebob *bebob, unsigned int *id)
{
 unsigned int enable_ext, enable_word;
 int err;

 err = avc_audio_get_selector(bebob->unit, 0, 9, &enable_ext);
 if (err < 0)
  goto end;
 err = avc_audio_get_selector(bebob->unit, 0, 8, &enable_word);
 if (err < 0)
  goto end;

 if (enable_ext == 0)
  *id = 0;
 else if (enable_word == 0)
  *id = 1;
 else
  *id = 2;
end:
 return err;
}
