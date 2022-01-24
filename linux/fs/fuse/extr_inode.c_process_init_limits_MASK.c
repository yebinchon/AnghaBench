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
struct fuse_init_out {int minor; scalar_t__ max_background; scalar_t__ congestion_threshold; } ;
struct fuse_conn {scalar_t__ max_background; scalar_t__ congestion_threshold; int /*<<< orphan*/  bg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ max_user_bgreq ; 
 scalar_t__ max_user_congthresh ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct fuse_conn *fc, struct fuse_init_out *arg)
{
	int cap_sys_admin = FUNC0(CAP_SYS_ADMIN);

	if (arg->minor < 13)
		return;

	FUNC1(&max_user_bgreq);
	FUNC1(&max_user_congthresh);

	FUNC2(&fc->bg_lock);
	if (arg->max_background) {
		fc->max_background = arg->max_background;

		if (!cap_sys_admin && fc->max_background > max_user_bgreq)
			fc->max_background = max_user_bgreq;
	}
	if (arg->congestion_threshold) {
		fc->congestion_threshold = arg->congestion_threshold;

		if (!cap_sys_admin &&
		    fc->congestion_threshold > max_user_congthresh)
			fc->congestion_threshold = max_user_congthresh;
	}
	FUNC3(&fc->bg_lock);
}