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
struct ceph_osd_request_target {int /*<<< orphan*/  target_oloc; int /*<<< orphan*/  target_oid; int /*<<< orphan*/  base_oloc; int /*<<< orphan*/  base_oid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct ceph_osd_request_target *t)
{
	FUNC0(&t->base_oid);
	FUNC1(&t->base_oloc);
	FUNC0(&t->target_oid);
	FUNC1(&t->target_oloc);
}