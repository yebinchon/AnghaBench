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
struct net_protocol {int /*<<< orphan*/  netns_ok; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct net_protocol const**,int /*<<< orphan*/ *,struct net_protocol const*) ; 
 int /*<<< orphan*/ * inet_protos ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned char) ; 

int FUNC2(const struct net_protocol *prot, unsigned char protocol)
{
	if (!prot->netns_ok) {
		FUNC1("Protocol %u is not namespace aware, cannot register.\n",
			protocol);
		return -EINVAL;
	}

	return !FUNC0((const struct net_protocol **)&inet_protos[protocol],
			NULL, prot) ? 0 : -1;
}