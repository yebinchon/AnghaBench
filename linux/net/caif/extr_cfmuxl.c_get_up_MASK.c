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
typedef  scalar_t__ u16 ;
struct cfmuxl {int /*<<< orphan*/  receive_lock; int /*<<< orphan*/ * up_cache; int /*<<< orphan*/  srvl_list; } ;
struct cflayer {scalar_t__ id; } ;

/* Variables and functions */
 scalar_t__ UP_CACHE_SIZE ; 
 struct cflayer* FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct cflayer*) ; 
 struct cflayer* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct cflayer *FUNC5(struct cfmuxl *muxl, u16 id)
{
	struct cflayer *up;
	int idx = id % UP_CACHE_SIZE;
	up = FUNC2(muxl->up_cache[idx]);
	if (up == NULL || up->id != id) {
		FUNC3(&muxl->receive_lock);
		up = FUNC0(&muxl->srvl_list, id);
		FUNC1(muxl->up_cache[idx], up);
		FUNC4(&muxl->receive_lock);
	}
	return up;
}