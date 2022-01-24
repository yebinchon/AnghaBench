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
typedef  int /*<<< orphan*/  uint64_t ;
struct ethhdr {int /*<<< orphan*/  h_dest; int /*<<< orphan*/  h_source; int /*<<< orphan*/  h_proto; } ;
struct __sk_buff {int dummy; } ;
typedef  int /*<<< orphan*/  ehdr ;

/* Variables and functions */
 int BPF_DROP ; 
 int DST_IFINDEX ; 
 int /*<<< orphan*/  DST_MAC ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  SRC_MAC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct __sk_buff*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct __sk_buff*,int /*<<< orphan*/ ,struct ethhdr*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

__attribute__((used)) static inline int FUNC6(struct __sk_buff *skb)
{
	uint64_t smac = SRC_MAC, dmac = DST_MAC;
	int ret, ifindex = DST_IFINDEX;
	struct ethhdr ehdr;

	ret = FUNC2(skb, 14, 0);
	if (ret < 0) {
		FUNC5("skb_change_head() failed: %d\n", ret);
	}

	ehdr.h_proto = FUNC0(ETH_P_IP);
	FUNC4(&ehdr.h_source, &smac, 6);
	FUNC4(&ehdr.h_dest, &dmac, 6);

	ret = FUNC3(skb, 0, &ehdr, sizeof(ehdr), 0);
	if (ret < 0) {
		FUNC5("skb_store_bytes() failed: %d\n", ret);
		return BPF_DROP;
	}

	return FUNC1(ifindex, 0);
}