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
typedef  int /*<<< orphan*/  u8 ;
struct cfmuxl {int /*<<< orphan*/  receive_lock; int /*<<< orphan*/  srvl_list; } ;
struct cflayer {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 struct cfmuxl* FUNC0 (struct cflayer*) ; 
 struct cflayer* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct cflayer *layr, struct cflayer *up, u8 linkid)
{
	struct cfmuxl *muxl = FUNC0(layr);
	struct cflayer *old;

	FUNC4(&muxl->receive_lock);

	/* Two entries with same id is wrong, so remove old layer from mux */
	old = FUNC1(&muxl->srvl_list, linkid);
	if (old != NULL)
		FUNC3(&old->node);

	FUNC2(&up->node, &muxl->srvl_list);
	FUNC5(&muxl->receive_lock);

	return 0;
}