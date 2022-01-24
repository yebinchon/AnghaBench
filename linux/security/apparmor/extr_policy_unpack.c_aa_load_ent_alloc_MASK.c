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
struct aa_load_ent {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct aa_load_ent* FUNC1 (int,int /*<<< orphan*/ ) ; 

struct aa_load_ent *FUNC2(void)
{
	struct aa_load_ent *ent = FUNC1(sizeof(*ent), GFP_KERNEL);
	if (ent)
		FUNC0(&ent->list);
	return ent;
}