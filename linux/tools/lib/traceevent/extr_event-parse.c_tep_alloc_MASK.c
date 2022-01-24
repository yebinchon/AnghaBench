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
struct tep_handle {int ref_count; int /*<<< orphan*/  host_bigendian; } ;

/* Variables and functions */
 struct tep_handle* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 

struct tep_handle *FUNC2(void)
{
	struct tep_handle *tep = FUNC0(1, sizeof(*tep));

	if (tep) {
		tep->ref_count = 1;
		tep->host_bigendian = FUNC1();
	}

	return tep;
}