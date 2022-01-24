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
typedef  size_t u32 ;
struct netlbl_unlhsh_iface {int ifindex; int valid; int /*<<< orphan*/  list; int /*<<< orphan*/  addr6_list; int /*<<< orphan*/  addr4_list; } ;
struct TYPE_2__ {int /*<<< orphan*/ * tbl; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct netlbl_unlhsh_iface*) ; 
 struct netlbl_unlhsh_iface* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  netlbl_unlhsh ; 
 int /*<<< orphan*/  netlbl_unlhsh_def ; 
 size_t FUNC4 (int) ; 
 int /*<<< orphan*/  netlbl_unlhsh_lock ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct netlbl_unlhsh_iface*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct netlbl_unlhsh_iface *FUNC10(int ifindex)
{
	u32 bkt;
	struct netlbl_unlhsh_iface *iface;

	iface = FUNC2(sizeof(*iface), GFP_ATOMIC);
	if (iface == NULL)
		return NULL;

	iface->ifindex = ifindex;
	FUNC0(&iface->addr4_list);
	FUNC0(&iface->addr6_list);
	iface->valid = 1;

	FUNC8(&netlbl_unlhsh_lock);
	if (ifindex > 0) {
		bkt = FUNC4(ifindex);
		if (FUNC6(ifindex) != NULL)
			goto add_iface_failure;
		FUNC3(&iface->list,
			     &FUNC5(netlbl_unlhsh)->tbl[bkt]);
	} else {
		FUNC0(&iface->list);
		if (FUNC5(netlbl_unlhsh_def) != NULL)
			goto add_iface_failure;
		FUNC7(netlbl_unlhsh_def, iface);
	}
	FUNC9(&netlbl_unlhsh_lock);

	return iface;

add_iface_failure:
	FUNC9(&netlbl_unlhsh_lock);
	FUNC1(iface);
	return NULL;
}