
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vortex_t ;


 int ADB_MIXIN (unsigned char) ;
 int vortex_route (int *,int,unsigned char,unsigned char,int ) ;

__attribute__((used)) static void
vortex_connection_adb_mixin(vortex_t * vortex, int en,
       unsigned char channel, unsigned char source,
       unsigned char mixin)
{
 vortex_route(vortex, en, channel, source, ADB_MIXIN(mixin));
}
