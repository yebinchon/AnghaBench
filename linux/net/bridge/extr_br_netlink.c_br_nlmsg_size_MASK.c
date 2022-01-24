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
struct net_device {int dummy; } ;
struct ifinfomsg {int dummy; } ;

/* Variables and functions */
 int IFNAMSIZ ; 
 int MAX_ADDR_LEN ; 
 size_t FUNC0 (int) ; 
 int FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 size_t FUNC3 (int) ; 

__attribute__((used)) static inline size_t FUNC4(struct net_device *dev, u32 filter_mask)
{
	return FUNC0(sizeof(struct ifinfomsg))
		+ FUNC3(IFNAMSIZ) /* IFLA_IFNAME */
		+ FUNC3(MAX_ADDR_LEN) /* IFLA_ADDRESS */
		+ FUNC3(4) /* IFLA_MASTER */
		+ FUNC3(4) /* IFLA_MTU */
		+ FUNC3(4) /* IFLA_LINK */
		+ FUNC3(1) /* IFLA_OPERSTATE */
		+ FUNC3(FUNC2()) /* IFLA_PROTINFO */
		+ FUNC3(FUNC1(dev,
				 filter_mask)) /* IFLA_AF_SPEC */
		+ FUNC3(4); /* IFLA_BRPORT_BACKUP_PORT */
}