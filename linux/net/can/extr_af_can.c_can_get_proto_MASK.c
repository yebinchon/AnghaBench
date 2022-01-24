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
struct can_proto {TYPE_1__* prot; } ;
struct TYPE_2__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/ * proto_tab ; 
 struct can_proto* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const struct can_proto *FUNC4(int protocol)
{
	const struct can_proto *cp;

	FUNC1();
	cp = FUNC0(proto_tab[protocol]);
	if (cp && !FUNC3(cp->prot->owner))
		cp = NULL;
	FUNC2();

	return cp;
}