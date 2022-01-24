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
struct taprio_sched {int /*<<< orphan*/  picos_per_byte; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int speed; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;

/* Variables and functions */
 int SPEED_10 ; 
 int SPEED_UNKNOWN ; 
 int USEC_PER_SEC ; 
 int FUNC0 (struct net_device*,struct ethtool_link_ksettings*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,int /*<<< orphan*/ ,long long,int) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev,
				      struct taprio_sched *q)
{
	struct ethtool_link_ksettings ecmd;
	int speed = SPEED_10;
	int picos_per_byte;
	int err;

	err = FUNC0(dev, &ecmd);
	if (err < 0)
		goto skip;

	if (ecmd.base.speed && ecmd.base.speed != SPEED_UNKNOWN)
		speed = ecmd.base.speed;

skip:
	picos_per_byte = (USEC_PER_SEC * 8) / speed;

	FUNC2(&q->picos_per_byte, picos_per_byte);
	FUNC3(dev, "taprio: set %s's picos_per_byte to: %lld, linkspeed: %d\n",
		   dev->name, (long long)FUNC1(&q->picos_per_byte),
		   ecmd.base.speed);
}