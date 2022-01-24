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
struct tep_handle {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  process_xen_hypercall_name ; 
 int /*<<< orphan*/  FUNC0 (struct tep_handle*,int /*<<< orphan*/ ,char*) ; 

void FUNC1(struct tep_handle *tep)
{
	FUNC0(tep, process_xen_hypercall_name,
				      "xen_hypercall_name");
}