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
typedef  int /*<<< orphan*/  u8 ;
struct xfrm_pol_inexact_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct xfrm_pol_inexact_node* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xfrm_pol_inexact_node*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct xfrm_pol_inexact_node *
FUNC2(const xfrm_address_t *addr, u8 prefixlen)
{
	struct xfrm_pol_inexact_node *node;

	node = FUNC0(sizeof(*node), GFP_ATOMIC);
	if (node)
		FUNC1(node, addr, prefixlen);

	return node;
}