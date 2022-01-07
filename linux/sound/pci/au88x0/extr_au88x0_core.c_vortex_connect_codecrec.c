
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vortex_t ;


 int ADB_CODECIN (int) ;
 int vortex_connection_adb_mixin (int *,int,int,int ,unsigned char) ;

__attribute__((used)) static void
vortex_connect_codecrec(vortex_t * vortex, int en, unsigned char mixin0,
   unsigned char mixin1)
{






 vortex_connection_adb_mixin(vortex, en, 0x11, ADB_CODECIN(0), mixin0);
 vortex_connection_adb_mixin(vortex, en, 0x11, ADB_CODECIN(1), mixin1);
}
