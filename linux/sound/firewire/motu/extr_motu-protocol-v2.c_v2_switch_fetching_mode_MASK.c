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
 int V2_CLOCK_8PRE_FETCH_DISABLE ; 
 int V2_CLOCK_8PRE_FETCH_ENABLE ; 
 int /*<<< orphan*/  V2_CLOCK_STATUS_OFFSET ; 
 int V2_CLOCK_TRAVELER_FETCH_DISABLE ; 
 int V2_CLOCK_TRAVELER_FETCH_ENABLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  snd_motu_spec_8pre ; 
 int /*<<< orphan*/  snd_motu_spec_traveler ; 
 int FUNC2 (struct snd_motu*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (struct snd_motu*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(struct snd_motu *motu, bool enable)
{
	__be32 reg;
	u32 data;
	int err = 0;

	if (motu->spec == &snd_motu_spec_traveler ||
	    motu->spec == &snd_motu_spec_8pre) {
		err = FUNC2(motu, V2_CLOCK_STATUS_OFFSET,
						&reg, sizeof(reg));
		if (err < 0)
			return err;
		data = FUNC0(reg);

		if (motu->spec == &snd_motu_spec_traveler) {
			data &= ~(V2_CLOCK_TRAVELER_FETCH_DISABLE |
				  V2_CLOCK_TRAVELER_FETCH_ENABLE);

			if (enable)
				data |= V2_CLOCK_TRAVELER_FETCH_ENABLE;
			else
				data |= V2_CLOCK_TRAVELER_FETCH_DISABLE;
		} else if (motu->spec == &snd_motu_spec_8pre) {
			data &= ~(V2_CLOCK_8PRE_FETCH_DISABLE |
				  V2_CLOCK_8PRE_FETCH_ENABLE);

			if (enable)
				data |= V2_CLOCK_8PRE_FETCH_DISABLE;
			else
				data |= V2_CLOCK_8PRE_FETCH_ENABLE;
		}

		reg = FUNC1(data);
		err = FUNC3(motu, V2_CLOCK_STATUS_OFFSET,
						 &reg, sizeof(reg));
	}

	return err;
}