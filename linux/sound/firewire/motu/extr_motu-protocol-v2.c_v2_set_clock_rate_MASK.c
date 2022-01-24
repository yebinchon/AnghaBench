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
struct snd_motu {int /*<<< orphan*/ * spec; } ;
typedef  int /*<<< orphan*/  reg ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int FUNC0 (unsigned int*) ; 
 int EINVAL ; 
 int V2_CLOCK_RATE_MASK ; 
 int V2_CLOCK_RATE_SHIFT ; 
 int /*<<< orphan*/  V2_CLOCK_STATUS_OFFSET ; 
 int V2_CLOCK_TRAVELER_FETCH_DISABLE ; 
 int V2_CLOCK_TRAVELER_FETCH_ENABLE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 unsigned int* snd_motu_clock_rates ; 
 int /*<<< orphan*/  snd_motu_spec_traveler ; 
 int FUNC3 (struct snd_motu*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct snd_motu*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(struct snd_motu *motu, unsigned int rate)
{
	__be32 reg;
	u32 data;
	int i;
	int err;

	for (i = 0; i < FUNC0(snd_motu_clock_rates); ++i) {
		if (snd_motu_clock_rates[i] == rate)
			break;
	}
	if (i == FUNC0(snd_motu_clock_rates))
		return -EINVAL;

	err = FUNC3(motu, V2_CLOCK_STATUS_OFFSET, &reg,
					sizeof(reg));
	if (err < 0)
		return err;
	data = FUNC1(reg);

	data &= ~V2_CLOCK_RATE_MASK;
	data |= i << V2_CLOCK_RATE_SHIFT;

	if (motu->spec == &snd_motu_spec_traveler) {
		data &= ~V2_CLOCK_TRAVELER_FETCH_ENABLE;
		data |= V2_CLOCK_TRAVELER_FETCH_DISABLE;
	}

	reg = FUNC2(data);
	return FUNC4(motu, V2_CLOCK_STATUS_OFFSET, &reg,
					  sizeof(reg));
}