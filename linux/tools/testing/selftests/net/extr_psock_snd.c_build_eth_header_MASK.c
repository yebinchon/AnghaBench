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
typedef  void* uint16_t ;
struct ethhdr {void* h_proto; } ;

/* Variables and functions */
 int ETH_HLEN ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 scalar_t__ cfg_use_vlan ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(void *header)
{
	struct ethhdr *eth = header;

	if (cfg_use_vlan) {
		uint16_t *tag = header + ETH_HLEN;

		eth->h_proto = FUNC0(ETH_P_8021Q);
		tag[1] = FUNC0(ETH_P_IP);
		return ETH_HLEN + 4;
	}

	eth->h_proto = FUNC0(ETH_P_IP);
	return ETH_HLEN;
}