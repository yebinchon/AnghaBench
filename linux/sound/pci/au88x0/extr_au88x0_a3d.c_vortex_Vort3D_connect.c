
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__* mixxtlk; int * mixplayb; TYPE_1__* card; int fixed_res; } ;
typedef TYPE_2__ vortex_t ;
struct TYPE_9__ {int dev; } ;


 scalar_t__ ADB_A3DOUT (int) ;
 int ADB_EQIN (int) ;
 int ADB_MIXIN (scalar_t__) ;
 int ADB_XTALKIN (int) ;
 scalar_t__ ADB_XTALKOUT (int) ;
 int MIX_DEFIGAIN ;
 int VOL_MIN ;
 scalar_t__ VORTEX_IS_QUAD (TYPE_2__*) ;
 int VORTEX_RESOURCE_MIXIN ;
 int dev_warn (int ,char*) ;
 void* vortex_adb_checkinout (TYPE_2__*,int ,int,int ) ;
 int vortex_connection_mixin_mix (TYPE_2__*,int,scalar_t__,int ,int ) ;
 int vortex_mix_setinputvolumebyte (TYPE_2__*,int ,scalar_t__,int ) ;
 int vortex_route (TYPE_2__*,int,int,scalar_t__,int ) ;

__attribute__((used)) static void vortex_Vort3D_connect(vortex_t * v, int en)
{
 int i;
 v->mixxtlk[0] =
     vortex_adb_checkinout(v, v->fixed_res, en, VORTEX_RESOURCE_MIXIN);
 if (v->mixxtlk[0] < 0) {
  dev_warn(v->card->dev,
    "vortex_Vort3D: ERROR: not enough free mixer resources.\n");
  return;
 }
 v->mixxtlk[1] =
     vortex_adb_checkinout(v, v->fixed_res, en, VORTEX_RESOURCE_MIXIN);
 if (v->mixxtlk[1] < 0) {
  dev_warn(v->card->dev,
    "vortex_Vort3D: ERROR: not enough free mixer resources.\n");
  return;
 }



 for (i = 0; i < 4; i++) {

  vortex_route(v, en, 0x11, ADB_A3DOUT(i * 2), ADB_XTALKIN(i));
  vortex_route(v, en, 0x11, ADB_A3DOUT(i * 2) + 1, ADB_XTALKIN(5 + i));
 }





 vortex_route(v, en, 0x11, ADB_XTALKOUT(0), ADB_MIXIN(v->mixxtlk[0]));
 vortex_route(v, en, 0x11, ADB_XTALKOUT(1), ADB_MIXIN(v->mixxtlk[1]));
 vortex_connection_mixin_mix(v, en, v->mixxtlk[0], v->mixplayb[0], 0);
 vortex_connection_mixin_mix(v, en, v->mixxtlk[1], v->mixplayb[1], 0);
 vortex_mix_setinputvolumebyte(v, v->mixplayb[0], v->mixxtlk[0],
          en ? MIX_DEFIGAIN : VOL_MIN);
 vortex_mix_setinputvolumebyte(v, v->mixplayb[1], v->mixxtlk[1],
          en ? MIX_DEFIGAIN : VOL_MIN);
 if (VORTEX_IS_QUAD(v)) {
  vortex_connection_mixin_mix(v, en, v->mixxtlk[0],
         v->mixplayb[2], 0);
  vortex_connection_mixin_mix(v, en, v->mixxtlk[1],
         v->mixplayb[3], 0);
  vortex_mix_setinputvolumebyte(v, v->mixplayb[2],
           v->mixxtlk[0],
           en ? MIX_DEFIGAIN : VOL_MIN);
  vortex_mix_setinputvolumebyte(v, v->mixplayb[3],
           v->mixxtlk[1],
           en ? MIX_DEFIGAIN : VOL_MIN);
 }

}
