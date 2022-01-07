
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {scalar_t__ cmds; scalar_t__ rp; scalar_t__ addr; int * buf; } ;
struct TYPE_4__ {scalar_t__ wp; scalar_t__ addr; int * buf; } ;
struct TYPE_6__ {scalar_t__ area; scalar_t__ addr; } ;
struct lola {TYPE_2__ rirb; TYPE_1__ corb; TYPE_3__ rb; int pci; } ;
typedef int __le32 ;


 int BAR0 ;
 int CORBCTL ;
 int CORBLBASE ;
 int CORBRP ;
 int CORBSIZE ;
 int CORBSTS ;
 int CORBUBASE ;
 int CORBWP ;
 unsigned char LOLA_CORB_INT_MASK ;
 unsigned char LOLA_RBCTL_DMA_EN ;
 unsigned char LOLA_RBCTL_IRQ_EN ;
 int LOLA_RBRWP_CLR ;
 unsigned char LOLA_RIRB_INT_MASK ;
 int PAGE_SIZE ;
 int RINTCNT ;
 int RIRBCTL ;
 int RIRBLBASE ;
 int RIRBSIZE ;
 int RIRBSTS ;
 int RIRBUBASE ;
 int RIRBWP ;
 int SNDRV_DMA_TYPE_DEV ;
 unsigned long jiffies ;
 unsigned char lola_readb (struct lola*,int ,int ) ;
 int lola_writeb (struct lola*,int ,int ,unsigned char) ;
 int lola_writel (struct lola*,int ,int ,int ) ;
 int lola_writew (struct lola*,int ,int ,int) ;
 unsigned long msecs_to_jiffies (int) ;
 int msleep (int) ;
 int snd_dma_alloc_pages (int ,int ,int ,TYPE_3__*) ;
 int snd_dma_pci_data (int ) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int upper_32_bits (scalar_t__) ;

__attribute__((used)) static int setup_corb_rirb(struct lola *chip)
{
 int err;
 unsigned char tmp;
 unsigned long end_time;

 err = snd_dma_alloc_pages(SNDRV_DMA_TYPE_DEV,
      snd_dma_pci_data(chip->pci),
      PAGE_SIZE, &chip->rb);
 if (err < 0)
  return err;

 chip->corb.addr = chip->rb.addr;
 chip->corb.buf = (__le32 *)chip->rb.area;
 chip->rirb.addr = chip->rb.addr + 2048;
 chip->rirb.buf = (__le32 *)(chip->rb.area + 2048);


 lola_writeb(chip, BAR0, RIRBCTL, 0);
 lola_writeb(chip, BAR0, CORBCTL, 0);

 end_time = jiffies + msecs_to_jiffies(200);
 do {
  if (!lola_readb(chip, BAR0, RIRBCTL) &&
      !lola_readb(chip, BAR0, CORBCTL))
   break;
  msleep(1);
 } while (time_before(jiffies, end_time));


 lola_writel(chip, BAR0, CORBLBASE, (u32)chip->corb.addr);
 lola_writel(chip, BAR0, CORBUBASE, upper_32_bits(chip->corb.addr));

 lola_writeb(chip, BAR0, CORBSIZE, 0x02);

 lola_writew(chip, BAR0, CORBWP, 0);

 lola_writew(chip, BAR0, CORBRP, LOLA_RBRWP_CLR);

 lola_writeb(chip, BAR0, CORBCTL, LOLA_RBCTL_DMA_EN);

 tmp = lola_readb(chip, BAR0, CORBSTS) & LOLA_CORB_INT_MASK;
 if (tmp)
  lola_writeb(chip, BAR0, CORBSTS, tmp);
 chip->corb.wp = 0;


 lola_writel(chip, BAR0, RIRBLBASE, (u32)chip->rirb.addr);
 lola_writel(chip, BAR0, RIRBUBASE, upper_32_bits(chip->rirb.addr));

 lola_writeb(chip, BAR0, RIRBSIZE, 0x02);

 lola_writew(chip, BAR0, RIRBWP, LOLA_RBRWP_CLR);

 lola_writew(chip, BAR0, RINTCNT, 1);

 lola_writeb(chip, BAR0, RIRBCTL, LOLA_RBCTL_DMA_EN | LOLA_RBCTL_IRQ_EN);

 tmp = lola_readb(chip, BAR0, RIRBSTS) & LOLA_RIRB_INT_MASK;
 if (tmp)
  lola_writeb(chip, BAR0, RIRBSTS, tmp);
 chip->rirb.rp = chip->rirb.cmds = 0;

 return 0;
}
