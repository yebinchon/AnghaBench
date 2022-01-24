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
typedef  unsigned int u32 ;
struct device_node {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device_node*,char*) ; 
 int FUNC1 (struct device_node*,char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,char*,unsigned int*) ; 

int FUNC3(struct device_node *np,
			      unsigned int *tx_mask,
			      unsigned int *rx_mask,
			      unsigned int *slots,
			      unsigned int *slot_width)
{
	u32 val;
	int ret;

	if (tx_mask)
		FUNC2(np, "dai-tdm-slot-tx-mask", tx_mask);
	if (rx_mask)
		FUNC2(np, "dai-tdm-slot-rx-mask", rx_mask);

	if (FUNC0(np, "dai-tdm-slot-num")) {
		ret = FUNC1(np, "dai-tdm-slot-num", &val);
		if (ret)
			return ret;

		if (slots)
			*slots = val;
	}

	if (FUNC0(np, "dai-tdm-slot-width")) {
		ret = FUNC1(np, "dai-tdm-slot-width", &val);
		if (ret)
			return ret;

		if (slot_width)
			*slot_width = val;
	}

	return 0;
}