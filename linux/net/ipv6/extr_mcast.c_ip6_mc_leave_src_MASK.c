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
struct sock {int dummy; } ;
struct ipv6_mc_socklist {int /*<<< orphan*/  sflock; TYPE_1__* sflist; int /*<<< orphan*/  sfmode; int /*<<< orphan*/  addr; } ;
struct inet6_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sl_max; int /*<<< orphan*/ * sl_addr; int /*<<< orphan*/  sl_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct inet6_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct sock *sk, struct ipv6_mc_socklist *iml,
			    struct inet6_dev *idev)
{
	int err;

	FUNC3(&iml->sflock);
	if (!iml->sflist) {
		/* any-source empty exclude case */
		err = FUNC1(idev, &iml->addr, iml->sfmode, 0, NULL, 0);
	} else {
		err = FUNC1(idev, &iml->addr, iml->sfmode,
				iml->sflist->sl_count, iml->sflist->sl_addr, 0);
		FUNC2(sk, iml->sflist, FUNC0(iml->sflist->sl_max));
		iml->sflist = NULL;
	}
	FUNC4(&iml->sflock);
	return err;
}