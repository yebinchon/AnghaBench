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
struct aa_load_ent {int /*<<< orphan*/  ns_name; int /*<<< orphan*/  new; int /*<<< orphan*/  old; int /*<<< orphan*/  rename; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aa_load_ent*) ; 

void FUNC3(struct aa_load_ent *ent)
{
	if (ent) {
		FUNC0(ent->rename);
		FUNC0(ent->old);
		FUNC0(ent->new);
		FUNC1(ent->ns_name);
		FUNC2(ent);
	}
}