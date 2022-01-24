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
struct ceph_mon_client {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_SUB_MONMAP ; 
 int /*<<< orphan*/  CEPH_SUB_OSDMAP ; 
 int /*<<< orphan*/  FUNC0 (struct ceph_mon_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_mon_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct ceph_mon_client*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct ceph_mon_client *monc)
{
	FUNC3(&monc->mutex);
	FUNC0(monc, CEPH_SUB_MONMAP, 0, true);
	FUNC0(monc, CEPH_SUB_OSDMAP, 0, false);
	FUNC1(monc);
	FUNC2(monc);
	FUNC4(&monc->mutex);
	return 0;
}