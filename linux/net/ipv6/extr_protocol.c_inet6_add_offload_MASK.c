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
struct net_offload {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_offload const**,int /*<<< orphan*/ *,struct net_offload const*) ; 
 int /*<<< orphan*/ * inet6_offloads ; 

int FUNC1(const struct net_offload *prot, unsigned char protocol)
{
	return !FUNC0((const struct net_offload **)&inet6_offloads[protocol],
			NULL, prot) ? 0 : -1;
}