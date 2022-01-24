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
 int /*<<< orphan*/  FUNC0 (struct ceph_mon_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct ceph_mon_client *monc)
{
	FUNC1(&monc->mutex);
	FUNC0(monc);
	FUNC2(&monc->mutex);
}