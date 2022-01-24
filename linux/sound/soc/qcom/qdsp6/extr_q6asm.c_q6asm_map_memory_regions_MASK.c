#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct audio_client {TYPE_1__* port; int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; } ;
struct audio_buffer {size_t size; scalar_t__ phys; } ;
typedef  scalar_t__ phys_addr_t ;
struct TYPE_2__ {unsigned int num_periods; struct audio_buffer* buf; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int FUNC0 (struct audio_client*,unsigned int,size_t,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct audio_buffer* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct audio_client*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC6(unsigned int dir, struct audio_client *ac,
			     phys_addr_t phys,
			     size_t period_sz, unsigned int periods)
{
	struct audio_buffer *buf;
	unsigned long flags;
	int cnt;
	int rc;

	FUNC4(&ac->lock, flags);
	if (ac->port[dir].buf) {
		FUNC1(ac->dev, "Buffer already allocated\n");
		FUNC5(&ac->lock, flags);
		return 0;
	}

	buf = FUNC2(((sizeof(struct audio_buffer)) * periods), GFP_ATOMIC);
	if (!buf) {
		FUNC5(&ac->lock, flags);
		return -ENOMEM;
	}


	ac->port[dir].buf = buf;

	buf[0].phys = phys;
	buf[0].size = period_sz;

	for (cnt = 1; cnt < periods; cnt++) {
		if (period_sz > 0) {
			buf[cnt].phys = buf[0].phys + (cnt * period_sz);
			buf[cnt].size = period_sz;
		}
	}
	ac->port[dir].num_periods = periods;

	FUNC5(&ac->lock, flags);

	rc = FUNC0(ac, dir, period_sz, periods, 1);
	if (rc < 0) {
		FUNC1(ac->dev, "Memory_map_regions failed\n");
		FUNC3(ac, &ac->port[dir]);
	}

	return rc;
}