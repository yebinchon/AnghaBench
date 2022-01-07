
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int stereo; } ;
struct TYPE_4__ {int stereo; } ;
struct TYPE_6__ {scalar_t__ minDev; TYPE_2__ dsp; TYPE_1__ soft; } ;


 scalar_t__ SND_DEV_DSP ;
 TYPE_3__ dmasound ;

__attribute__((used)) static int sound_set_stereo(int stereo)
{
 if (stereo < 0)
  return dmasound.soft.stereo;

 stereo = !!stereo;

 dmasound.soft.stereo = stereo;
 if (dmasound.minDev == SND_DEV_DSP)
  dmasound.dsp.stereo = stereo;

 return stereo;
}
