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
struct ceph_osd_client {int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABORT_ON_FULL ; 
 int /*<<< orphan*/  CEPH_OSDMAP_FULL ; 
 int /*<<< orphan*/  abort_on_full_fn ; 
 scalar_t__ FUNC0 (struct ceph_osd_client*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ceph_osd_client*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC3 (struct ceph_osd_client*) ; 

__attribute__((used)) static void FUNC4(struct ceph_osd_client *osdc)
{
	bool victims = false;

	if (FUNC1(osdc->client, ABORT_ON_FULL) &&
	    (FUNC0(osdc, CEPH_OSDMAP_FULL) || FUNC3(osdc)))
		FUNC2(osdc, abort_on_full_fn, &victims);
}