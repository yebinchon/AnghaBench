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
struct aa_proxy {int /*<<< orphan*/  label; int /*<<< orphan*/  count; } ;
struct aa_label {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aa_label*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct aa_proxy* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct aa_proxy *FUNC4(struct aa_label *label, gfp_t gfp)
{
	struct aa_proxy *new;

	new = FUNC2(sizeof(struct aa_proxy), gfp);
	if (new) {
		FUNC1(&new->count);
		FUNC3(new->label, FUNC0(label));
	}
	return new;
}