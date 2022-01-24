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
struct azx {TYPE_2__* card; } ;
struct TYPE_4__ {int* res; } ;
struct TYPE_6__ {TYPE_1__ rirb; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int AZX_IRS_VALID ; 
 int EIO ; 
 int /*<<< orphan*/  IR ; 
 int /*<<< orphan*/  IRS ; 
 TYPE_3__* FUNC0 (struct azx*) ; 
 int FUNC1 (struct azx*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct azx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct azx *chip, unsigned int addr)
{
	int timeout = 50;

	while (timeout--) {
		/* check IRV busy bit */
		if (FUNC2(chip, IRS) & AZX_IRS_VALID) {
			/* reuse rirb.res as the response return value */
			FUNC0(chip)->rirb.res[addr] = FUNC1(chip, IR);
			return 0;
		}
		FUNC5(1);
	}
	if (FUNC4())
		FUNC3(chip->card->dev, "get_response timeout: IRS=0x%x\n",
			FUNC2(chip, IRS));
	FUNC0(chip)->rirb.res[addr] = -1;
	return -EIO;
}