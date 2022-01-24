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
struct snd_soc_card {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ clk_pout ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  pout ; 

__attribute__((used)) static int FUNC8(struct snd_soc_card *card)
{
	int ret;

	if (clk_pout) {
		pout = FUNC3(NULL, "CLK_POUT");
		if (FUNC0(pout)) {
			FUNC7(card->dev, "Unable to obtain CLK_POUT: %ld\n",
				FUNC1(pout));
			return FUNC1(pout);
		}

		ret = FUNC2(pout);
		if (ret != 0) {
			FUNC7(card->dev, "Unable to enable CLK_POUT: %d\n",
				ret);
			FUNC5(pout);
			return ret;
		}

		FUNC6(card->dev, "MCLK enabled at %luHz\n",
			FUNC4(pout));
	}

	return 0;
}