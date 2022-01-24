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
struct snd_oxfw {scalar_t__ dev_lock_count; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_oxfw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct snd_oxfw *oxfw)
{
	FUNC2(&oxfw->lock);

	if (FUNC0(oxfw->dev_lock_count <= 0))
		goto end;
	if (--oxfw->dev_lock_count == 0)
		FUNC1(oxfw);
end:
	FUNC3(&oxfw->lock);
}