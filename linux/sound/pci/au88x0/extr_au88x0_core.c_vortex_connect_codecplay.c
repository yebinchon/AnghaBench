
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vortex_t ;


 int ADB_CODECOUT (int) ;
 int ADB_EQIN (int) ;
 int ADB_EQOUT (int) ;
 scalar_t__ VORTEX_IS_QUAD (int *) ;
 int vortex_connection_mix_adb (int *,int,int,unsigned char,int ) ;
 int vortex_mix_setvolumebyte (int *,unsigned char,int ) ;
 int vortex_route (int *,int,int,int ,int ) ;

__attribute__((used)) static void
vortex_connect_codecplay(vortex_t * vortex, int en, unsigned char mixers[])
{






 vortex_connection_mix_adb(vortex, en, 0x11, mixers[0], ADB_EQIN(0));
 vortex_connection_mix_adb(vortex, en, 0x11, mixers[1], ADB_EQIN(1));

 vortex_mix_setvolumebyte(vortex, mixers[0], 0);
 vortex_mix_setvolumebyte(vortex, mixers[1], 0);
 vortex_route(vortex, en, 0x11, ADB_EQOUT(0), ADB_CODECOUT(0));
 vortex_route(vortex, en, 0x11, ADB_EQOUT(1), ADB_CODECOUT(1));


 if (VORTEX_IS_QUAD(vortex)) {

  vortex_connection_mix_adb(vortex, en, 0x11, mixers[2],
       ADB_CODECOUT(0 + 4));
  vortex_connection_mix_adb(vortex, en, 0x11, mixers[3],
       ADB_CODECOUT(1 + 4));

 }






}
