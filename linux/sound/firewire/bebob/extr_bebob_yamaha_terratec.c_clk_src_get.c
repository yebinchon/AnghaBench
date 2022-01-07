
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_bebob {int unit; } ;


 unsigned int ARRAY_SIZE (int ) ;
 int EIO ;
 int avc_audio_get_selector (int ,int ,int,unsigned int*) ;
 int clk_src_types ;

__attribute__((used)) static int
clk_src_get(struct snd_bebob *bebob, unsigned int *id)
{
 int err;

 err = avc_audio_get_selector(bebob->unit, 0, 4, id);
 if (err < 0)
  return err;

 if (*id >= ARRAY_SIZE(clk_src_types))
  return -EIO;

 return 0;
}
