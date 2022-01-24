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
typedef  int /*<<< orphan*/  u32 ;
struct hdac_bus {int /*<<< orphan*/ * last_cmd; } ;
struct azx {TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int AZX_IRS_BUSY ; 
 int AZX_IRS_VALID ; 
 int EIO ; 
 int /*<<< orphan*/  IC ; 
 int /*<<< orphan*/  IRS ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct azx*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct azx*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct azx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct azx*,int /*<<< orphan*/ ,int) ; 
 struct azx* FUNC5 (struct hdac_bus*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct hdac_bus *bus, u32 val)
{
	struct azx *chip = FUNC5(bus);
	unsigned int addr = FUNC0(val);
	int timeout = 50;

	bus->last_cmd[FUNC0(val)] = val;
	while (timeout--) {
		/* check ICB busy bit */
		if (!((FUNC1(chip, IRS) & AZX_IRS_BUSY))) {
			/* Clear IRV valid bit */
			FUNC4(chip, IRS, FUNC1(chip, IRS) |
				   AZX_IRS_VALID);
			FUNC3(chip, IC, val);
			FUNC4(chip, IRS, FUNC1(chip, IRS) |
				   AZX_IRS_BUSY);
			return FUNC2(chip, addr);
		}
		FUNC8(1);
	}
	if (FUNC7())
		FUNC6(chip->card->dev,
			"send_cmd timeout: IRS=0x%x, val=0x%x\n",
			FUNC1(chip, IRS), val);
	return -EIO;
}