#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {unsigned int wp; unsigned int rp; int* res; scalar_t__* cmds; int /*<<< orphan*/ * buf; } ;
struct hdac_bus {int /*<<< orphan*/ * last_cmd; int /*<<< orphan*/  dev; TYPE_1__ rirb; } ;

/* Variables and functions */
 unsigned int AZX_MAX_RIRB_ENTRIES ; 
 int AZX_RIRB_EX_UNSOL_EV ; 
 unsigned int HDA_MAX_CODECS ; 
 int /*<<< orphan*/  RIRBWP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct hdac_bus*,int,int) ; 
 unsigned int FUNC5 (struct hdac_bus*,int /*<<< orphan*/ ) ; 

void FUNC6(struct hdac_bus *bus)
{
	unsigned int rp, wp;
	unsigned int addr;
	u32 res, res_ex;

	wp = FUNC5(bus, RIRBWP);
	if (wp == 0xffff) {
		/* something wrong, controller likely turned to D3 */
		return;
	}

	if (wp == bus->rirb.wp)
		return;
	bus->rirb.wp = wp;

	while (bus->rirb.rp != wp) {
		bus->rirb.rp++;
		bus->rirb.rp %= AZX_MAX_RIRB_ENTRIES;

		rp = bus->rirb.rp << 1; /* an RIRB entry is 8-bytes */
		res_ex = FUNC2(bus->rirb.buf[rp + 1]);
		res = FUNC2(bus->rirb.buf[rp]);
		addr = res_ex & 0xf;
		if (addr >= HDA_MAX_CODECS) {
			FUNC0(bus->dev,
				"spurious response %#x:%#x, rp = %d, wp = %d",
				res, res_ex, bus->rirb.rp, wp);
			FUNC3();
		} else if (res_ex & AZX_RIRB_EX_UNSOL_EV)
			FUNC4(bus, res, res_ex);
		else if (bus->rirb.cmds[addr]) {
			bus->rirb.res[addr] = res;
			bus->rirb.cmds[addr]--;
		} else {
			FUNC1(bus->dev,
				"spurious response %#x:%#x, last cmd=%#08x\n",
				res, res_ex, bus->last_cmd[addr]);
		}
	}
}