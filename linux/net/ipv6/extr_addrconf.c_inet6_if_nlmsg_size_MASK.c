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
struct ifinfomsg {int dummy; } ;

/* Variables and functions */
 int IFNAMSIZ ; 
 int MAX_ADDR_LEN ; 
 size_t FUNC0 (int) ; 
 int FUNC1 () ; 
 size_t FUNC2 (int) ; 

__attribute__((used)) static inline size_t FUNC3(void)
{
	return FUNC0(sizeof(struct ifinfomsg))
	       + FUNC2(IFNAMSIZ) /* IFLA_IFNAME */
	       + FUNC2(MAX_ADDR_LEN) /* IFLA_ADDRESS */
	       + FUNC2(4) /* IFLA_MTU */
	       + FUNC2(4) /* IFLA_LINK */
	       + FUNC2(1) /* IFLA_OPERSTATE */
	       + FUNC2(FUNC1()); /* IFLA_PROTINFO */
}