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
struct TYPE_6__ {scalar_t__ addr; int /*<<< orphan*/  cmds; scalar_t__ rp; scalar_t__ wp; int /*<<< orphan*/ * buf; } ;
struct TYPE_5__ {scalar_t__ area; scalar_t__ addr; } ;
struct TYPE_4__ {scalar_t__ addr; int /*<<< orphan*/ * buf; } ;
struct hdac_bus {int /*<<< orphan*/  reg_lock; TYPE_3__ rirb; TYPE_2__ rb; int /*<<< orphan*/  corbrp_self_clear; TYPE_1__ corb; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int AZX_CORBCTL_RUN ; 
 int AZX_CORBRP_RST ; 
 int /*<<< orphan*/  AZX_GCTL_UNSOL ; 
 int AZX_RBCTL_DMA_EN ; 
 int AZX_RBCTL_IRQ_EN ; 
 int AZX_RIRBWP_RST ; 
 int /*<<< orphan*/  CORBCTL ; 
 int /*<<< orphan*/  CORBLBASE ; 
 int /*<<< orphan*/  CORBRP ; 
 int /*<<< orphan*/  CORBSIZE ; 
 int /*<<< orphan*/  CORBUBASE ; 
 int /*<<< orphan*/  CORBWP ; 
 int /*<<< orphan*/  GCTL ; 
 int /*<<< orphan*/  RINTCNT ; 
 int /*<<< orphan*/  RIRBCTL ; 
 int /*<<< orphan*/  RIRBLBASE ; 
 int /*<<< orphan*/  RIRBSIZE ; 
 int /*<<< orphan*/  RIRBUBASE ; 
 int /*<<< orphan*/  RIRBWP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct hdac_bus*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hdac_bus*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hdac_bus*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hdac_bus*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hdac_bus*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 

void FUNC10(struct hdac_bus *bus)
{
	FUNC0(!bus->rb.area);

	FUNC7(&bus->reg_lock);
	/* CORB set up */
	bus->corb.addr = bus->rb.addr;
	bus->corb.buf = (__le32 *)bus->rb.area;
	FUNC5(bus, CORBLBASE, (u32)bus->corb.addr);
	FUNC5(bus, CORBUBASE, FUNC9(bus->corb.addr));

	/* set the corb size to 256 entries (ULI requires explicitly) */
	FUNC4(bus, CORBSIZE, 0x02);
	/* set the corb write pointer to 0 */
	FUNC6(bus, CORBWP, 0);

	/* reset the corb hw read pointer */
	FUNC6(bus, CORBRP, AZX_CORBRP_RST);
	if (!bus->corbrp_self_clear)
		FUNC1(bus);

	/* enable corb dma */
	FUNC4(bus, CORBCTL, AZX_CORBCTL_RUN);

	/* RIRB set up */
	bus->rirb.addr = bus->rb.addr + 2048;
	bus->rirb.buf = (__le32 *)(bus->rb.area + 2048);
	bus->rirb.wp = bus->rirb.rp = 0;
	FUNC2(bus->rirb.cmds, 0, sizeof(bus->rirb.cmds));
	FUNC5(bus, RIRBLBASE, (u32)bus->rirb.addr);
	FUNC5(bus, RIRBUBASE, FUNC9(bus->rirb.addr));

	/* set the rirb size to 256 entries (ULI requires explicitly) */
	FUNC4(bus, RIRBSIZE, 0x02);
	/* reset the rirb hw write pointer */
	FUNC6(bus, RIRBWP, AZX_RIRBWP_RST);
	/* set N=1, get RIRB response interrupt for new entry */
	FUNC6(bus, RINTCNT, 1);
	/* enable rirb dma and response irq */
	FUNC4(bus, RIRBCTL, AZX_RBCTL_DMA_EN | AZX_RBCTL_IRQ_EN);
	/* Accept unsolicited responses */
	FUNC3(bus, GCTL, AZX_GCTL_UNSOL, AZX_GCTL_UNSOL);
	FUNC8(&bus->reg_lock);
}