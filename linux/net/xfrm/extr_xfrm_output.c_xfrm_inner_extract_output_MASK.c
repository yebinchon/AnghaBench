#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct xfrm_state_afinfo {int (* extract_output ) (struct xfrm_state*,struct sk_buff*) ;} ;
struct xfrm_mode {int /*<<< orphan*/  family; } ;
struct TYPE_4__ {scalar_t__ family; } ;
struct xfrm_state {struct xfrm_mode inner_mode; TYPE_1__ sel; } ;
struct sk_buff {int dummy; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  family; } ;

/* Variables and functions */
 scalar_t__ AF_UNSPEC ; 
 int EAFNOSUPPORT ; 
 scalar_t__ FUNC0 (struct xfrm_state_afinfo const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_3__* FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct xfrm_state*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct xfrm_mode* FUNC6 (struct xfrm_state*,int /*<<< orphan*/ ) ; 
 struct xfrm_state_afinfo* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct xfrm_state *x, struct sk_buff *skb)
{
	const struct xfrm_state_afinfo *afinfo;
	const struct xfrm_mode *inner_mode;
	int err = -EAFNOSUPPORT;

	if (x->sel.family == AF_UNSPEC)
		inner_mode = FUNC6(x,
				FUNC5(FUNC3(skb)->ops->family));
	else
		inner_mode = &x->inner_mode;

	if (inner_mode == NULL)
		return -EAFNOSUPPORT;

	FUNC1();
	afinfo = FUNC7(inner_mode->family);
	if (FUNC0(afinfo))
		err = afinfo->extract_output(x, skb);
	FUNC2();

	return err;
}