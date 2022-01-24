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
struct uniphier_aio {int /*<<< orphan*/  chip; } ;
struct snd_soc_dai {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct uniphier_aio* FUNC2 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dai *dai, int pll_id,
				int source, unsigned int freq_in,
				unsigned int freq_out)
{
	struct uniphier_aio *aio = FUNC2(dai);
	int ret;

	if (!FUNC1(aio->chip, pll_id))
		return -EINVAL;

	ret = FUNC0(aio->chip, pll_id, freq_out);
	if (ret < 0)
		return ret;

	return 0;
}