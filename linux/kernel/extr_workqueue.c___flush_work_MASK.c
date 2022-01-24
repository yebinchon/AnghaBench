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
struct wq_barrier {int /*<<< orphan*/  work; int /*<<< orphan*/  done; } ;
struct work_struct {int /*<<< orphan*/  lockdep_map; int /*<<< orphan*/  func; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct work_struct*,struct wq_barrier*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wq_online ; 

__attribute__((used)) static bool FUNC6(struct work_struct *work, bool from_cancel)
{
	struct wq_barrier barr;

	if (FUNC0(!wq_online))
		return false;

	if (FUNC0(!work->func))
		return false;

	if (!from_cancel) {
		FUNC2(&work->lockdep_map);
		FUNC3(&work->lockdep_map);
	}

	if (FUNC4(work, &barr, from_cancel)) {
		FUNC5(&barr.done);
		FUNC1(&barr.work);
		return true;
	} else {
		return false;
	}
}