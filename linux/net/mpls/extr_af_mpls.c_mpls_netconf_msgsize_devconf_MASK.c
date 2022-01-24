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
struct netconfmsg {int dummy; } ;

/* Variables and functions */
 int NETCONFA_ALL ; 
 int NETCONFA_INPUT ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(int type)
{
	int size = FUNC0(sizeof(struct netconfmsg))
			+ FUNC1(4); /* NETCONFA_IFINDEX */
	bool all = false;

	if (type == NETCONFA_ALL)
		all = true;

	if (all || type == NETCONFA_INPUT)
		size += FUNC1(4);

	return size;
}