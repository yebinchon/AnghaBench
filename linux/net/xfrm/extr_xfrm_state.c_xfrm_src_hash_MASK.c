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
typedef  int /*<<< orphan*/  xfrm_address_t ;
struct TYPE_2__ {int /*<<< orphan*/  state_hmask; } ;
struct net {TYPE_1__ xfrm; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,unsigned short,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline unsigned int FUNC1(struct net *net,
					 const xfrm_address_t *daddr,
					 const xfrm_address_t *saddr,
					 unsigned short family)
{
	return FUNC0(daddr, saddr, family, net->xfrm.state_hmask);
}