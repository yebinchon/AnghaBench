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
struct TYPE_2__ {int /*<<< orphan*/  sid; int /*<<< orphan*/  pkey; int /*<<< orphan*/  subnet_prefix; } ;
struct sel_ib_pkey {TYPE_1__ psec; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct sel_ib_pkey* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sel_ib_pkey* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sel_ib_pkey*) ; 
 int /*<<< orphan*/  sel_ib_pkey_lock ; 
 int /*<<< orphan*/  selinux_state ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(u64 subnet_prefix, u16 pkey_num, u32 *sid)
{
	int ret;
	struct sel_ib_pkey *pkey;
	struct sel_ib_pkey *new = NULL;
	unsigned long flags;

	FUNC4(&sel_ib_pkey_lock, flags);
	pkey = FUNC2(subnet_prefix, pkey_num);
	if (pkey) {
		*sid = pkey->psec.sid;
		FUNC5(&sel_ib_pkey_lock, flags);
		return 0;
	}

	ret = FUNC1(&selinux_state, subnet_prefix, pkey_num,
				   sid);
	if (ret)
		goto out;

	/* If this memory allocation fails still return 0. The SID
	 * is valid, it just won't be added to the cache.
	 */
	new = FUNC0(sizeof(*new), GFP_ATOMIC);
	if (!new)
		goto out;

	new->psec.subnet_prefix = subnet_prefix;
	new->psec.pkey = pkey_num;
	new->psec.sid = *sid;
	FUNC3(new);

out:
	FUNC5(&sel_ib_pkey_lock, flags);
	return ret;
}