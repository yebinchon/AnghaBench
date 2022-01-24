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
struct nf_hook_ops {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net*,struct nf_hook_ops const*) ; 

void FUNC1(struct net *net, const struct nf_hook_ops *reg,
			     unsigned int hookcount)
{
	unsigned int i;

	for (i = 0; i < hookcount; i++)
		FUNC0(net, &reg[i]);
}