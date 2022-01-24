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
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct cs43130_private {int /*<<< orphan*/  clk_mutex; int /*<<< orphan*/  regmap; int /*<<< orphan*/  clk_req; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS43130_MCLK_SRC_RCO ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct cs43130_private* FUNC4 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream,
			   struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct cs43130_private *cs43130 = FUNC4(component);

	FUNC2(&cs43130->clk_mutex);
	cs43130->clk_req--;
	if (!cs43130->clk_req) {
		/* no DAI is currently using clk */
		FUNC0(component, CS43130_MCLK_SRC_RCO);
		FUNC1(false, cs43130->regmap);
	}
	FUNC3(&cs43130->clk_mutex);

	return 0;
}