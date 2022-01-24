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
struct nf_hook_ops {int /*<<< orphan*/  pf; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nf_nat_ipv4_ops ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int /*<<< orphan*/ ,struct nf_hook_ops const*,int /*<<< orphan*/ ) ; 

void FUNC2(struct net *net, const struct nf_hook_ops *ops)
{
	FUNC1(net, ops->pf, ops, FUNC0(nf_nat_ipv4_ops));
}