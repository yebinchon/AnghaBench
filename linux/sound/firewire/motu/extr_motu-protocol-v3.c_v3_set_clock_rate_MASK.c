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
typedef  int u32 ;
struct snd_motu {int dummy; } ;
typedef  int /*<<< orphan*/  reg ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int FUNC0 (unsigned int*) ; 
 int EINTR ; 
 int EINVAL ; 
 int V3_CLOCK_RATE_MASK ; 
 int V3_CLOCK_RATE_SHIFT ; 
 int /*<<< orphan*/  V3_CLOCK_STATUS_OFFSET ; 
 int V3_FETCH_PCM_FRAMES ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 unsigned int* snd_motu_clock_rates ; 
 int FUNC4 (struct snd_motu*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (struct snd_motu*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(struct snd_motu *motu, unsigned int rate)
{
	__be32 reg;
	u32 data;
	bool need_to_wait;
	int i, err;

	for (i = 0; i < FUNC0(snd_motu_clock_rates); ++i) {
		if (snd_motu_clock_rates[i] == rate)
			break;
	}
	if (i == FUNC0(snd_motu_clock_rates))
		return -EINVAL;

	err = FUNC4(motu, V3_CLOCK_STATUS_OFFSET, &reg,
					sizeof(reg));
	if (err < 0)
		return err;
	data = FUNC1(reg);

	data &= ~(V3_CLOCK_RATE_MASK | V3_FETCH_PCM_FRAMES);
	data |= i << V3_CLOCK_RATE_SHIFT;

	need_to_wait = data != FUNC1(reg);

	reg = FUNC2(data);
	err = FUNC5(motu, V3_CLOCK_STATUS_OFFSET, &reg,
					 sizeof(reg));
	if (err < 0)
		return err;

	if (need_to_wait) {
		/* Cost expensive. */
		if (FUNC3(4000) > 0)
			return -EINTR;
	}

	return 0;
}