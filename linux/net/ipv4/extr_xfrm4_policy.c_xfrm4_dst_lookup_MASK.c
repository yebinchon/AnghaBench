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
typedef  int /*<<< orphan*/  xfrm_address_t ;
typedef  int /*<<< orphan*/  u32 ;
struct net {int dummy; } ;
struct flowi4 {int dummy; } ;
struct dst_entry {int dummy; } ;

/* Variables and functions */
 struct dst_entry* FUNC0 (struct net*,struct flowi4*,int,int,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dst_entry *FUNC1(struct net *net, int tos, int oif,
					  const xfrm_address_t *saddr,
					  const xfrm_address_t *daddr,
					  u32 mark)
{
	struct flowi4 fl4;

	return FUNC0(net, &fl4, tos, oif, saddr, daddr, mark);
}