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
struct snd_sf_list {int open_client; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (struct snd_sf_list*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC3(struct snd_sf_list *sflist, int client)
{
	unsigned long flags;
	FUNC1(&sflist->lock, flags);
	if (sflist->open_client == client)  {
		FUNC2(&sflist->lock, flags);
		return FUNC0(sflist);
	}
	FUNC2(&sflist->lock, flags);
	return 0;
}