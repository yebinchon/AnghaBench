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
struct atiixp {TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ATI_REG_CMD_ACLINK_ACTIVE ; 
 int ATI_REG_CMD_AC_RESET ; 
 int ATI_REG_CMD_AC_SOFT_RESET ; 
 int ATI_REG_CMD_AC_SYNC ; 
 int ATI_REG_CMD_POWERDOWN ; 
 int /*<<< orphan*/  CMD ; 
 int FUNC0 (struct atiixp*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct atiixp*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct atiixp *chip)
{
	int timeout;

	/* reset powerdoewn */
	if (FUNC1(chip, CMD, ATI_REG_CMD_POWERDOWN, 0))
		FUNC4(10);

	/* perform a software reset */
	FUNC1(chip, CMD, ATI_REG_CMD_AC_SOFT_RESET, ATI_REG_CMD_AC_SOFT_RESET);
	FUNC0(chip, CMD);
	FUNC4(10);
	FUNC1(chip, CMD, ATI_REG_CMD_AC_SOFT_RESET, 0);
    
	timeout = 10;
	while (! (FUNC0(chip, CMD) & ATI_REG_CMD_ACLINK_ACTIVE)) {
		/* do a hard reset */
		FUNC1(chip, CMD, ATI_REG_CMD_AC_SYNC|ATI_REG_CMD_AC_RESET,
			      ATI_REG_CMD_AC_SYNC);
		FUNC0(chip, CMD);
		FUNC3(1);
		FUNC1(chip, CMD, ATI_REG_CMD_AC_RESET, ATI_REG_CMD_AC_RESET);
		if (!--timeout) {
			FUNC2(chip->card->dev, "codec reset timeout\n");
			break;
		}
	}

	/* deassert RESET and assert SYNC to make sure */
	FUNC1(chip, CMD, ATI_REG_CMD_AC_SYNC|ATI_REG_CMD_AC_RESET,
		      ATI_REG_CMD_AC_SYNC|ATI_REG_CMD_AC_RESET);

	return 0;
}