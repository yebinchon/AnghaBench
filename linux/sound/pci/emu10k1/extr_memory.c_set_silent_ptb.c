
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int addr; } ;
struct snd_emu10k1 {TYPE_2__* card; TYPE_1__ silent_page; } ;
struct TYPE_4__ {int dev; } ;


 int UNIT_PAGES ;
 scalar_t__ __get_ptb_entry (struct snd_emu10k1*,int) ;
 int __set_ptb_entry (struct snd_emu10k1*,int,int ) ;
 int dev_dbg (int ,char*,int,unsigned int) ;

__attribute__((used)) static inline void set_silent_ptb(struct snd_emu10k1 *emu, int page)
{
 int i;
 page *= UNIT_PAGES;
 for (i = 0; i < UNIT_PAGES; i++, page++) {

  __set_ptb_entry(emu, page, emu->silent_page.addr);
  dev_dbg(emu->card->dev, "mapped silent page %d to entry %.8x\n",
   page, (unsigned int)__get_ptb_entry(emu, page));
 }
}
