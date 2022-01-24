#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  a4; } ;
typedef  TYPE_1__ xfrm_address_t ;
typedef  int /*<<< orphan*/  u32 ;
struct net {int dummy; } ;
struct flowi4 {int /*<<< orphan*/  saddr; } ;
struct dst_entry {int dummy; } ;

/* Variables and functions */
 int EHOSTUNREACH ; 
 scalar_t__ FUNC0 (struct dst_entry*) ; 
 struct dst_entry* FUNC1 (struct net*,struct flowi4*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dst_entry*) ; 

__attribute__((used)) static int FUNC3(struct net *net, int oif,
			   xfrm_address_t *saddr, xfrm_address_t *daddr,
			   u32 mark)
{
	struct dst_entry *dst;
	struct flowi4 fl4;

	dst = FUNC1(net, &fl4, 0, oif, NULL, daddr, mark);
	if (FUNC0(dst))
		return -EHOSTUNREACH;

	saddr->a4 = fl4.saddr;
	FUNC2(dst);
	return 0;
}