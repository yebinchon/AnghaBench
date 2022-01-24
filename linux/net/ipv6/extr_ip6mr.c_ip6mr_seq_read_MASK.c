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
struct TYPE_2__ {unsigned int ipmr_seq; } ;
struct net {TYPE_1__ ipv6; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned int FUNC1 (struct net*) ; 

__attribute__((used)) static unsigned int FUNC2(struct net *net)
{
	FUNC0();

	return net->ipv6.ipmr_seq + FUNC1(net);
}