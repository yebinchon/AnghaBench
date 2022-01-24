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
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WCD9XXX_RX_BIAS_FLYB_BUFF ; 
 int /*<<< orphan*/  WCD9XXX_RX_BIAS_FLYB_VNEG_5_UA_MASK ; 
 int /*<<< orphan*/  WCD9XXX_RX_BIAS_FLYB_VPOS_5_UA_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static void FUNC2(struct snd_soc_component *comp,
					 int mode)
{

	FUNC0(comp, WCD9XXX_RX_BIAS_FLYB_BUFF,
				WCD9XXX_RX_BIAS_FLYB_VPOS_5_UA_MASK, 0x0A);
	FUNC0(comp, WCD9XXX_RX_BIAS_FLYB_BUFF,
				WCD9XXX_RX_BIAS_FLYB_VNEG_5_UA_MASK, 0x0A);
	/* Sleep needed to avoid click and pop as per HW requirement */
	FUNC1(100, 110);
}