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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int /*<<< orphan*/  sid; } ;
struct sel_ib_pkey {TYPE_1__ psec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct sel_ib_pkey* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC4(u64 subnet_prefix, u16 pkey_num, u32 *sid)
{
	struct sel_ib_pkey *pkey;

	FUNC0();
	pkey = FUNC2(subnet_prefix, pkey_num);
	if (pkey) {
		*sid = pkey->psec.sid;
		FUNC1();
		return 0;
	}
	FUNC1();

	return FUNC3(subnet_prefix, pkey_num, sid);
}