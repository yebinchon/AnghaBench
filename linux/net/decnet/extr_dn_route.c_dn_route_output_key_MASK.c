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
struct flowidn {scalar_t__ flowidn_proto; } ;
struct dst_entry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dst_entry*) ; 
 int FUNC1 (struct dst_entry*) ; 
 int FUNC2 (struct dst_entry**,struct flowidn*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct flowidn*) ; 
 int /*<<< orphan*/  init_net ; 
 struct dst_entry* FUNC4 (int /*<<< orphan*/ *,struct dst_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct dst_entry **pprt, struct flowidn *flp, int flags)
{
	int err;

	err = FUNC2(pprt, flp, flags);
	if (err == 0 && flp->flowidn_proto) {
		*pprt = FUNC4(&init_net, *pprt,
				    FUNC3(flp), NULL, 0);
		if (FUNC0(*pprt)) {
			err = FUNC1(*pprt);
			*pprt = NULL;
		}
	}
	return err;
}