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
typedef  scalar_t__ u32 ;
struct ceph_osd_client {scalar_t__ epoch_barrier; TYPE_1__* osdmap; } ;
struct TYPE_2__ {scalar_t__ epoch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ceph_osd_client*) ; 

__attribute__((used)) static void FUNC3(struct ceph_osd_client *osdc, u32 eb)
{
	if (FUNC1(eb > osdc->epoch_barrier)) {
		FUNC0("updating epoch_barrier from %u to %u\n",
				osdc->epoch_barrier, eb);
		osdc->epoch_barrier = eb;
		/* Request map if we're not to the barrier yet */
		if (eb > osdc->osdmap->epoch)
			FUNC2(osdc);
	}
}