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
struct snd_motu {int dummy; } ;
typedef  int /*<<< orphan*/  reg ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int*) ; 
 int EIO ; 
 unsigned int V2_CLOCK_RATE_MASK ; 
 unsigned int V2_CLOCK_RATE_SHIFT ; 
 int /*<<< orphan*/  V2_CLOCK_STATUS_OFFSET ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int* snd_motu_clock_rates ; 
 int FUNC2 (struct snd_motu*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(struct snd_motu *motu, unsigned int *rate)
{
	__be32 reg;
	unsigned int index;
	int err;

	err = FUNC2(motu, V2_CLOCK_STATUS_OFFSET, &reg,
					sizeof(reg));
	if (err < 0)
		return err;

	index = (FUNC1(reg) & V2_CLOCK_RATE_MASK) >> V2_CLOCK_RATE_SHIFT;
	if (index >= FUNC0(snd_motu_clock_rates))
		return -EIO;

	*rate = snd_motu_clock_rates[index];

	return 0;
}