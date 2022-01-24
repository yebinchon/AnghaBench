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
struct ubuf_info {int /*<<< orphan*/  zerocopy; int /*<<< orphan*/  (* callback ) (struct ubuf_info*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ubuf_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct ubuf_info*,int /*<<< orphan*/ ) ; 

void FUNC4(struct ubuf_info *uarg)
{
	if (uarg && FUNC1(&uarg->refcnt)) {
		if (uarg->callback)
			uarg->callback(uarg, uarg->zerocopy);
		else
			FUNC0(FUNC2(uarg));
	}
}