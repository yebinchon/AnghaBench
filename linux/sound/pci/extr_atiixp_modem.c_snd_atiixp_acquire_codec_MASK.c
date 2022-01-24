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
struct atiixp_modem {TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ATI_REG_PHYS_OUT_ADDR_EN ; 
 int EBUSY ; 
 int /*<<< orphan*/  PHYS_OUT_ADDR ; 
 int FUNC0 (struct atiixp_modem*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct atiixp_modem *chip)
{
	int timeout = 1000;

	while (FUNC0(chip, PHYS_OUT_ADDR) & ATI_REG_PHYS_OUT_ADDR_EN) {
		if (! timeout--) {
			FUNC1(chip->card->dev, "codec acquire timeout\n");
			return -EBUSY;
		}
		FUNC2(1);
	}
	return 0;
}