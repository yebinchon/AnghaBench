
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct special_params {unsigned int clk_src; } ;
struct snd_bebob {struct special_params* maudio_special_quirk; } ;



__attribute__((used)) static int special_clk_get(struct snd_bebob *bebob, unsigned int *id)
{
 struct special_params *params = bebob->maudio_special_quirk;
 *id = params->clk_src;
 return 0;
}
