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
struct ceph_osd_client {int /*<<< orphan*/  lock; } ;
struct ceph_osd {int /*<<< orphan*/  lock; struct ceph_osd_client* o_osdc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC4(struct ceph_osd *osd)
{
	struct ceph_osd_client *osdc = osd->o_osdc;

	FUNC0(!(FUNC1(&osd->lock) &&
		  FUNC2(&osdc->lock)) &&
		!FUNC3(&osdc->lock));
}