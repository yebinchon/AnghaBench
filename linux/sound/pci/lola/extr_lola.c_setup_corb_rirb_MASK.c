#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_5__ {scalar_t__ cmds; scalar_t__ rp; scalar_t__ addr; int /*<<< orphan*/ * buf; } ;
struct TYPE_4__ {scalar_t__ wp; scalar_t__ addr; int /*<<< orphan*/ * buf; } ;
struct TYPE_6__ {scalar_t__ area; scalar_t__ addr; } ;
struct lola {TYPE_2__ rirb; TYPE_1__ corb; TYPE_3__ rb; int /*<<< orphan*/  pci; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  BAR0 ; 
 int /*<<< orphan*/  CORBCTL ; 
 int /*<<< orphan*/  CORBLBASE ; 
 int /*<<< orphan*/  CORBRP ; 
 int /*<<< orphan*/  CORBSIZE ; 
 int /*<<< orphan*/  CORBSTS ; 
 int /*<<< orphan*/  CORBUBASE ; 
 int /*<<< orphan*/  CORBWP ; 
 unsigned char LOLA_CORB_INT_MASK ; 
 unsigned char LOLA_RBCTL_DMA_EN ; 
 unsigned char LOLA_RBCTL_IRQ_EN ; 
 int LOLA_RBRWP_CLR ; 
 unsigned char LOLA_RIRB_INT_MASK ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  RINTCNT ; 
 int /*<<< orphan*/  RIRBCTL ; 
 int /*<<< orphan*/  RIRBLBASE ; 
 int /*<<< orphan*/  RIRBSIZE ; 
 int /*<<< orphan*/  RIRBSTS ; 
 int /*<<< orphan*/  RIRBUBASE ; 
 int /*<<< orphan*/  RIRBWP ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 unsigned long jiffies ; 
 unsigned char FUNC0 (struct lola*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lola*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (struct lola*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lola*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct lola *chip)
{
	int err;
	unsigned char tmp;
	unsigned long end_time;

	err = FUNC6(SNDRV_DMA_TYPE_DEV,
				  FUNC7(chip->pci),
				  PAGE_SIZE, &chip->rb);
	if (err < 0)
		return err;

	chip->corb.addr = chip->rb.addr;
	chip->corb.buf = (__le32 *)chip->rb.area;
	chip->rirb.addr = chip->rb.addr + 2048;
	chip->rirb.buf = (__le32 *)(chip->rb.area + 2048);

	/* disable ringbuffer DMAs */
	FUNC1(chip, BAR0, RIRBCTL, 0);
	FUNC1(chip, BAR0, CORBCTL, 0);

	end_time = jiffies + FUNC4(200);
	do {
		if (!FUNC0(chip, BAR0, RIRBCTL) &&
		    !FUNC0(chip, BAR0, CORBCTL))
			break;
		FUNC5(1);
	} while (FUNC8(jiffies, end_time));

	/* CORB set up */
	FUNC2(chip, BAR0, CORBLBASE, (u32)chip->corb.addr);
	FUNC2(chip, BAR0, CORBUBASE, FUNC9(chip->corb.addr));
	/* set the corb size to 256 entries */
	FUNC1(chip, BAR0, CORBSIZE, 0x02);
	/* set the corb write pointer to 0 */
	FUNC3(chip, BAR0, CORBWP, 0);
	/* reset the corb hw read pointer */
	FUNC3(chip, BAR0, CORBRP, LOLA_RBRWP_CLR);
	/* enable corb dma */
	FUNC1(chip, BAR0, CORBCTL, LOLA_RBCTL_DMA_EN);
	/* clear flags if set */
	tmp = FUNC0(chip, BAR0, CORBSTS) & LOLA_CORB_INT_MASK;
	if (tmp)
		FUNC1(chip, BAR0, CORBSTS, tmp);
	chip->corb.wp = 0;

	/* RIRB set up */
	FUNC2(chip, BAR0, RIRBLBASE, (u32)chip->rirb.addr);
	FUNC2(chip, BAR0, RIRBUBASE, FUNC9(chip->rirb.addr));
	/* set the rirb size to 256 entries */
	FUNC1(chip, BAR0, RIRBSIZE, 0x02);
	/* reset the rirb hw write pointer */
	FUNC3(chip, BAR0, RIRBWP, LOLA_RBRWP_CLR);
	/* set N=1, get RIRB response interrupt for new entry */
	FUNC3(chip, BAR0, RINTCNT, 1);
	/* enable rirb dma and response irq */
	FUNC1(chip, BAR0, RIRBCTL, LOLA_RBCTL_DMA_EN | LOLA_RBCTL_IRQ_EN);
	/* clear flags if set */
	tmp =  FUNC0(chip, BAR0, RIRBSTS) & LOLA_RIRB_INT_MASK;
	if (tmp)
		FUNC1(chip, BAR0, RIRBSTS, tmp);
	chip->rirb.rp = chip->rirb.cmds = 0;

	return 0;
}