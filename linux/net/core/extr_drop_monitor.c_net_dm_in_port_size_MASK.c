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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int IFNAMSIZ ; 
 size_t FUNC0 (int) ; 

__attribute__((used)) static size_t FUNC1(void)
{
	       /* NET_DM_ATTR_IN_PORT nest */
	return FUNC0(0) +
	       /* NET_DM_ATTR_PORT_NETDEV_IFINDEX */
	       FUNC0(sizeof(u32)) +
	       /* NET_DM_ATTR_PORT_NETDEV_NAME */
	       FUNC0(IFNAMSIZ + 1);
}