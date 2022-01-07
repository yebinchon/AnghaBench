
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* mixer_init ) () ;} ;
struct TYPE_6__ {TYPE_1__ mach; scalar_t__ bass; scalar_t__ treble; } ;
struct TYPE_5__ {scalar_t__ busy; } ;


 TYPE_3__ dmasound ;
 TYPE_2__ mixer ;
 int mixer_fops ;
 int register_sound_mixer (int *,int) ;
 int stub1 () ;

__attribute__((used)) static void mixer_init(void)
{

 int mixer_unit;

 mixer_unit = register_sound_mixer(&mixer_fops, -1);
 if (mixer_unit < 0)
  return;

 mixer.busy = 0;
 dmasound.treble = 0;
 dmasound.bass = 0;
 if (dmasound.mach.mixer_init)
     dmasound.mach.mixer_init();
}
