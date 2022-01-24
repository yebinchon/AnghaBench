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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct neighbour {int dummy; } ;
struct ndisc_options {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device const*,struct neighbour*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ndisc_options*) ; 
 int /*<<< orphan*/  FUNC1 (struct neighbour*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(const struct net_device *dev, struct neighbour *neigh,
		  const u8 *lladdr, u8 new, u32 flags, u8 icmp6_type,
		  struct ndisc_options *ndopts)
{
	FUNC1(neigh, lladdr, new, flags, 0);
	/* report ndisc ops about neighbour update */
	FUNC0(dev, neigh, flags, icmp6_type, ndopts);
}