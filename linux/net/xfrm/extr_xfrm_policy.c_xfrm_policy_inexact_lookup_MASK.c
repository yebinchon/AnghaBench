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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct xfrm_pol_inexact_bin {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  xfrm_policy_lock; } ;
struct net {TYPE_1__ xfrm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct xfrm_pol_inexact_bin* FUNC3 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct xfrm_pol_inexact_bin *
FUNC4(struct net *net, u8 type, u16 family,
			   u8 dir, u32 if_id)
{
	struct xfrm_pol_inexact_bin *bin;

	FUNC0(&net->xfrm.xfrm_policy_lock);

	FUNC1();
	bin = FUNC3(net, type, family, dir, if_id);
	FUNC2();

	return bin;
}