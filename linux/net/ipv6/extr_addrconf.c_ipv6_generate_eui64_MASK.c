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
struct net_device {int type; } ;

/* Variables and functions */
#define  ARPHRD_6LOWPAN 139 
#define  ARPHRD_ARCNET 138 
#define  ARPHRD_ETHER 137 
#define  ARPHRD_FDDI 136 
#define  ARPHRD_IEEE1394 135 
#define  ARPHRD_INFINIBAND 134 
#define  ARPHRD_IP6GRE 133 
#define  ARPHRD_IPGRE 132 
#define  ARPHRD_RAWIP 131 
#define  ARPHRD_SIT 130 
#define  ARPHRD_TUNNEL 129 
#define  ARPHRD_TUNNEL6 128 
 int FUNC0 (int /*<<< orphan*/ *,struct net_device*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct net_device*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct net_device*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct net_device*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct net_device*) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct net_device*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct net_device*) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct net_device*) ; 

__attribute__((used)) static int FUNC8(u8 *eui, struct net_device *dev)
{
	switch (dev->type) {
	case ARPHRD_ETHER:
	case ARPHRD_FDDI:
		return FUNC2(eui, dev);
	case ARPHRD_ARCNET:
		return FUNC1(eui, dev);
	case ARPHRD_INFINIBAND:
		return FUNC5(eui, dev);
	case ARPHRD_SIT:
		return FUNC7(eui, dev);
	case ARPHRD_IPGRE:
	case ARPHRD_TUNNEL:
		return FUNC3(eui, dev);
	case ARPHRD_6LOWPAN:
		return FUNC0(eui, dev);
	case ARPHRD_IEEE1394:
		return FUNC4(eui, dev);
	case ARPHRD_TUNNEL6:
	case ARPHRD_IP6GRE:
	case ARPHRD_RAWIP:
		return FUNC6(eui, dev);
	}
	return -1;
}