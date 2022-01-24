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
typedef  int /*<<< orphan*/  u32 ;
struct snd_motu {int dummy; } ;
typedef  int /*<<< orphan*/  reg ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  V3_CLOCK_STATUS_OFFSET ; 
 int /*<<< orphan*/  V3_FETCH_PCM_FRAMES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_motu*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (struct snd_motu*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(struct snd_motu *motu, bool enable)
{
	__be32 reg;
	u32 data;
	int err;

	err = FUNC2(motu, V3_CLOCK_STATUS_OFFSET, &reg,
					sizeof(reg));
	if (err < 0)
		return 0;
	data = FUNC0(reg);

	if (enable)
		data |= V3_FETCH_PCM_FRAMES;
	else
		data &= ~V3_FETCH_PCM_FRAMES;

	reg = FUNC1(data);
	return FUNC3(motu, V3_CLOCK_STATUS_OFFSET, &reg,
					  sizeof(reg));
}