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
typedef  unsigned int u32 ;
struct ssp_priv {struct ssp_device* ssp; } ;
struct ssp_device {int dummy; } ;
struct snd_soc_dai {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSCR0 ; 
 unsigned int SSCR0_DSS ; 
 unsigned int FUNC0 (int) ; 
 unsigned int SSCR0_EDSS ; 
 unsigned int SSCR0_MOD ; 
 unsigned int FUNC1 (int) ; 
 int /*<<< orphan*/  SSRSA ; 
 int /*<<< orphan*/  SSTSA ; 
 unsigned int FUNC2 (struct ssp_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ssp_device*,int /*<<< orphan*/ ,unsigned int) ; 
 struct ssp_priv* FUNC4 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_dai *cpu_dai,
	unsigned int tx_mask, unsigned int rx_mask, int slots, int slot_width)
{
	struct ssp_priv *priv = FUNC4(cpu_dai);
	struct ssp_device *ssp = priv->ssp;
	u32 sscr0;

	sscr0 = FUNC2(ssp, SSCR0);
	sscr0 &= ~(SSCR0_MOD | FUNC1(8) | SSCR0_EDSS | SSCR0_DSS);

	/* set slot width */
	if (slot_width > 16)
		sscr0 |= SSCR0_EDSS | FUNC0(slot_width - 16);
	else
		sscr0 |= FUNC0(slot_width);

	if (slots > 1) {
		/* enable network mode */
		sscr0 |= SSCR0_MOD;

		/* set number of active slots */
		sscr0 |= FUNC1(slots);

		/* set active slot mask */
		FUNC3(ssp, SSTSA, tx_mask);
		FUNC3(ssp, SSRSA, rx_mask);
	}
	FUNC3(ssp, SSCR0, sscr0);

	return 0;
}