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
struct nau8825 {unsigned int mclk_freq; int /*<<< orphan*/  dev; int /*<<< orphan*/  mclk; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC7(struct nau8825 *nau8825, unsigned int freq)
{
	int ret = 0;

	nau8825->mclk = FUNC6(nau8825->dev, "mclk");
	if (FUNC0(nau8825->mclk)) {
		FUNC5(nau8825->dev, "No 'mclk' clock found, assume MCLK is managed externally");
		return 0;
	}

	if (!nau8825->mclk_freq) {
		ret = FUNC1(nau8825->mclk);
		if (ret) {
			FUNC4(nau8825->dev, "Unable to prepare codec mclk\n");
			return ret;
		}
	}

	if (nau8825->mclk_freq != freq) {
		freq = FUNC2(nau8825->mclk, freq);
		ret = FUNC3(nau8825->mclk, freq);
		if (ret) {
			FUNC4(nau8825->dev, "Unable to set mclk rate\n");
			return ret;
		}
		nau8825->mclk_freq = freq;
	}

	return 0;
}