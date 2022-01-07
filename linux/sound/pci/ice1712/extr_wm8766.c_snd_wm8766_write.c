
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct TYPE_2__ {int (* write ) (struct snd_wm8766*,size_t,size_t) ;} ;
struct snd_wm8766 {size_t* regs; TYPE_1__ ops; } ;


 size_t WM8766_REG_COUNT ;
 int stub1 (struct snd_wm8766*,size_t,size_t) ;

__attribute__((used)) static void snd_wm8766_write(struct snd_wm8766 *wm, u16 addr, u16 data)
{
 if (addr < WM8766_REG_COUNT)
  wm->regs[addr] = data;
 wm->ops.write(wm, addr, data);
}
