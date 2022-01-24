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
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;
struct asoc_simple_dai {int /*<<< orphan*/  slot_width; scalar_t__ slots; int /*<<< orphan*/  rx_slot_mask; int /*<<< orphan*/  tx_slot_mask; int /*<<< orphan*/  clk_direction; scalar_t__ sysclk; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct snd_soc_dai*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_soc_dai*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dai *dai,
				     struct asoc_simple_dai *simple_dai)
{
	int ret;

	if (!simple_dai)
		return 0;

	if (simple_dai->sysclk) {
		ret = FUNC1(dai, 0, simple_dai->sysclk,
					     simple_dai->clk_direction);
		if (ret && ret != -ENOTSUPP) {
			FUNC0(dai->dev, "simple-card: set_sysclk error\n");
			return ret;
		}
	}

	if (simple_dai->slots) {
		ret = FUNC2(dai,
					       simple_dai->tx_slot_mask,
					       simple_dai->rx_slot_mask,
					       simple_dai->slots,
					       simple_dai->slot_width);
		if (ret && ret != -ENOTSUPP) {
			FUNC0(dai->dev, "simple-card: set_tdm_slot error\n");
			return ret;
		}
	}

	return 0;
}