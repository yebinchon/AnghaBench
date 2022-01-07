
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sonicvibes {scalar_t__ dmaa_port; TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ SV_DMA_ADDR0 ;
 scalar_t__ SV_DMA_COUNT0 ;
 scalar_t__ SV_DMA_MODE ;
 int dev_dbg (int ,char*,unsigned int,int ) ;
 int inl (scalar_t__) ;
 int outb (int,scalar_t__) ;
 int outl (unsigned int,scalar_t__) ;

__attribute__((used)) static inline void snd_sonicvibes_setdmaa(struct sonicvibes * sonic,
       unsigned int addr,
       unsigned int count)
{
 count--;
 outl(addr, sonic->dmaa_port + SV_DMA_ADDR0);
 outl(count, sonic->dmaa_port + SV_DMA_COUNT0);
 outb(0x18, sonic->dmaa_port + SV_DMA_MODE);




}
