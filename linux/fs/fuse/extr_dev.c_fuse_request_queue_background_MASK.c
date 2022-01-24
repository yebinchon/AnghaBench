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
struct fuse_req {int /*<<< orphan*/  list; int /*<<< orphan*/  flags; } ;
struct fuse_conn {scalar_t__ num_background; scalar_t__ max_background; int blocked; scalar_t__ congestion_threshold; int /*<<< orphan*/  bg_lock; int /*<<< orphan*/  bg_queue; TYPE_1__* sb; int /*<<< orphan*/  connected; int /*<<< orphan*/  num_waiting; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_bdi; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_RW_ASYNC ; 
 int /*<<< orphan*/  BLK_RW_SYNC ; 
 int /*<<< orphan*/  FR_BACKGROUND ; 
 int /*<<< orphan*/  FR_ISREPLY ; 
 int /*<<< orphan*/  FR_WAITING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct fuse_conn*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC10(struct fuse_conn *fc,
					  struct fuse_req *req)
{
	bool queued = false;

	FUNC0(!FUNC9(FR_BACKGROUND, &req->flags));
	if (!FUNC9(FR_WAITING, &req->flags)) {
		FUNC1(FR_WAITING, &req->flags);
		FUNC2(&fc->num_waiting);
	}
	FUNC1(FR_ISREPLY, &req->flags);
	FUNC7(&fc->bg_lock);
	if (FUNC4(fc->connected)) {
		fc->num_background++;
		if (fc->num_background == fc->max_background)
			fc->blocked = 1;
		if (fc->num_background == fc->congestion_threshold && fc->sb) {
			FUNC6(fc->sb->s_bdi, BLK_RW_SYNC);
			FUNC6(fc->sb->s_bdi, BLK_RW_ASYNC);
		}
		FUNC5(&req->list, &fc->bg_queue);
		FUNC3(fc);
		queued = true;
	}
	FUNC8(&fc->bg_lock);

	return queued;
}