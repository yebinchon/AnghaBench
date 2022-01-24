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
typedef  scalar_t__ u32 ;
struct ceph_osd_client {scalar_t__ epoch_barrier; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ceph_osd_client*,scalar_t__) ; 

void FUNC6(struct ceph_osd_client *osdc, u32 eb)
{
	FUNC0(&osdc->lock);
	if (FUNC2(eb > osdc->epoch_barrier)) {
		FUNC3(&osdc->lock);
		FUNC1(&osdc->lock);
		FUNC5(osdc, eb);
		FUNC4(&osdc->lock);
	} else {
		FUNC3(&osdc->lock);
	}
}