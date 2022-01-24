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
typedef  scalar_t__ u32 ;
struct pcpu_sw_netstats {int /*<<< orphan*/  syncp; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct net_device {int /*<<< orphan*/  tstats; } ;

/* Variables and functions */
 struct pcpu_sw_netstats* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC3(struct net_device *dev, u32 len)
{
	struct pcpu_sw_netstats *tstats = FUNC0(dev->tstats);

	FUNC1(&tstats->syncp);
	tstats->tx_packets++;
	tstats->tx_bytes += len;
	FUNC2(&tstats->syncp);
}