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
struct net {int dummy; } ;
struct flowi {int dummy; } ;
struct dst_entry {TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  family; } ;

/* Variables and functions */
 int /*<<< orphan*/  EREMOTE ; 
 scalar_t__ FUNC0 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dst_entry*) ; 
 int XFRM_LOOKUP_KEEP_DST_REF ; 
 int XFRM_LOOKUP_QUEUE ; 
 int /*<<< orphan*/  FUNC2 (struct dst_entry*) ; 
 struct dst_entry* FUNC3 (struct net*,int /*<<< orphan*/ ,struct dst_entry*) ; 
 struct dst_entry* FUNC4 (struct net*,struct dst_entry*,struct flowi const*,struct sock const*,int) ; 

struct dst_entry *FUNC5(struct net *net, struct dst_entry *dst_orig,
				    const struct flowi *fl,
				    const struct sock *sk, int flags)
{
	struct dst_entry *dst = FUNC4(net, dst_orig, fl, sk,
					    flags | XFRM_LOOKUP_QUEUE |
					    XFRM_LOOKUP_KEEP_DST_REF);

	if (FUNC0(dst) && FUNC1(dst) == -EREMOTE)
		return FUNC3(net, dst_orig->ops->family, dst_orig);

	if (FUNC0(dst))
		FUNC2(dst_orig);

	return dst;
}