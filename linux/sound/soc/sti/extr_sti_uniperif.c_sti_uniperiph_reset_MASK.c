#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct uniperif {scalar_t__ ver; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (struct uniperif*) ; 
 int /*<<< orphan*/  FUNC1 (struct uniperif*) ; 
 scalar_t__ SND_ST_UNIPERIF_VERSION_UNI_PLR_TOP_1_0 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int  FUNC4(struct uniperif *uni)
{
	int count = 10;

	/* Reset uniperipheral uni */
	FUNC1(uni);

	if (uni->ver < SND_ST_UNIPERIF_VERSION_UNI_PLR_TOP_1_0) {
		while (FUNC0(uni) && count) {
			FUNC3(5);
			count--;
		}
	}

	if (!count) {
		FUNC2(uni->dev, "Failed to reset uniperif\n");
		return -EIO;
	}

	return 0;
}