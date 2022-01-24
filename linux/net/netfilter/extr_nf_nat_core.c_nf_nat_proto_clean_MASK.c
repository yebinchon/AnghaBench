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
struct nf_conn {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPS_SRC_NAT_DONE_BIT ; 
 int /*<<< orphan*/  FUNC0 (struct nf_conn*) ; 
 scalar_t__ FUNC1 (struct nf_conn*,void*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct nf_conn *ct, void *data)
{
	if (FUNC1(ct, data))
		return 1;

	/* This module is being removed and conntrack has nat null binding.
	 * Remove it from bysource hash, as the table will be freed soon.
	 *
	 * Else, when the conntrack is destoyed, nf_nat_cleanup_conntrack()
	 * will delete entry from already-freed table.
	 */
	if (FUNC2(IPS_SRC_NAT_DONE_BIT, &ct->status))
		FUNC0(ct);

	/* don't delete conntrack.  Although that would make things a lot
	 * simpler, we'd end up flushing all conntracks on nat rmmod.
	 */
	return 0;
}