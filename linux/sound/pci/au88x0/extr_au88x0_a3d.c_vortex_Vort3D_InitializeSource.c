
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {TYPE_1__* card; } ;
typedef TYPE_2__ vortex_t ;
struct TYPE_14__ {int * vortex; } ;
typedef TYPE_3__ a3dsrc_t ;
struct TYPE_12__ {int dev; } ;


 int CoefTCDefault ;
 int GainTCDefault ;
 int HrtfTCDefault ;
 int ItdTCDefault ;
 int a3dsrc_DisableA3D (TYPE_3__*) ;
 int a3dsrc_EnableA3D (TYPE_3__*) ;
 int a3dsrc_ProgramPipe (TYPE_3__*) ;
 int a3dsrc_SetA3DSampleRate (TYPE_3__*,int) ;
 int a3dsrc_SetTimeConsts (TYPE_3__*,int ,int ,int ,int ) ;
 int a3dsrc_ZeroState (TYPE_3__*) ;
 int dev_warn (int ,char*) ;

__attribute__((used)) static void vortex_Vort3D_InitializeSource(a3dsrc_t *a, int en, vortex_t *v)
{
 if (a->vortex == ((void*)0)) {
  dev_warn(v->card->dev,
    "Vort3D_InitializeSource: A3D source not initialized\n");
  return;
 }
 if (en) {
  a3dsrc_ProgramPipe(a);
  a3dsrc_SetA3DSampleRate(a, 0x11);
  a3dsrc_SetTimeConsts(a, HrtfTCDefault,
         ItdTCDefault, GainTCDefault,
         CoefTCDefault);



  a3dsrc_EnableA3D(a);
 } else {
  a3dsrc_DisableA3D(a);
  a3dsrc_ZeroState(a);
 }
}
