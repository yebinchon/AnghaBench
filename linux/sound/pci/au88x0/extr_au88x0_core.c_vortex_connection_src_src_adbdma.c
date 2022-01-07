
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vortex_t ;


 int ADB_DMA (unsigned char) ;
 int ADB_SRCOUT (unsigned char) ;
 int vortex_routeLRT (int *,int,unsigned char,int ,int ,int ) ;

__attribute__((used)) static void
vortex_connection_src_src_adbdma(vortex_t * vortex, int en,
     unsigned char ch, unsigned char src0,
     unsigned char src1, unsigned char adbdma)
{

 vortex_routeLRT(vortex, en, ch, ADB_SRCOUT(src0), ADB_SRCOUT(src1),
   ADB_DMA(adbdma));
}
