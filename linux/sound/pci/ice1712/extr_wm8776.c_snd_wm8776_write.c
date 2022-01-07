
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int (* write ) (struct snd_wm8776*,int,int) ;} ;
struct snd_wm8776 {int* regs; TYPE_1__ ops; } ;


 int WM8776_REG_RESET ;
 int stub1 (struct snd_wm8776*,int,int) ;

__attribute__((used)) static void snd_wm8776_write(struct snd_wm8776 *wm, u16 addr, u16 data)
{
 u8 bus_addr = addr << 1 | data >> 8;
 u8 bus_data = data & 0xff;

 if (addr < WM8776_REG_RESET)
  wm->regs[addr] = data;
 wm->ops.write(wm, bus_addr, bus_data);
}
