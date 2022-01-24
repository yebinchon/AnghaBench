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
struct net_device {unsigned int max_mtu; } ;
struct dsa_port {TYPE_1__* tag_ops; } ;
struct TYPE_2__ {unsigned int overhead; } ;

/* Variables and functions */
 unsigned int ETH_DATA_LEN ; 
 int FUNC0 (struct net_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct net_device *dev, struct dsa_port *cpu_dp)
{
	unsigned int mtu = ETH_DATA_LEN + cpu_dp->tag_ops->overhead;
	int err;

	FUNC2();
	if (mtu <= dev->max_mtu) {
		err = FUNC0(dev, mtu);
		if (err)
			FUNC1(dev, "Unable to set MTU to include for DSA overheads\n");
	}
	FUNC3();
}