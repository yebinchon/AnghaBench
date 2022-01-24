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
typedef  int u8 ;
struct cfmuxl {int /*<<< orphan*/  receive_lock; int /*<<< orphan*/ * up_cache; int /*<<< orphan*/  srvl_list; } ;
struct cflayer {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int UP_CACHE_SIZE ; 
 struct cfmuxl* FUNC1 (struct cflayer*) ; 
 struct cflayer* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

struct cflayer *FUNC7(struct cflayer *layr, u8 id)
{
	struct cflayer *up;
	struct cfmuxl *muxl = FUNC1(layr);
	int idx = id % UP_CACHE_SIZE;

	if (id == 0) {
		FUNC4("Trying to remove control layer\n");
		return NULL;
	}

	FUNC5(&muxl->receive_lock);
	up = FUNC2(&muxl->srvl_list, id);
	if (up == NULL)
		goto out;

	FUNC0(muxl->up_cache[idx], NULL);
	FUNC3(&up->node);
out:
	FUNC6(&muxl->receive_lock);
	return up;
}