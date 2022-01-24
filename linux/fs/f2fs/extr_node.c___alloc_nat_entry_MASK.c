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
struct nat_entry {int dummy; } ;
typedef  int /*<<< orphan*/  nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_F2FS_ZERO ; 
 struct nat_entry* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nat_entry* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nat_entry_slab ; 
 int /*<<< orphan*/  FUNC2 (struct nat_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct nat_entry*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct nat_entry *FUNC4(nid_t nid, bool no_fail)
{
	struct nat_entry *new;

	if (no_fail)
		new = FUNC0(nat_entry_slab, GFP_F2FS_ZERO);
	else
		new = FUNC1(nat_entry_slab, GFP_F2FS_ZERO);
	if (new) {
		FUNC3(new, nid);
		FUNC2(new);
	}
	return new;
}