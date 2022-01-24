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
struct zx_tdm_info {int dummy; } ;

/* Variables and functions */
 unsigned long PROCESS_TDM_EN ; 
 unsigned long PROCESS_TX_EN ; 
 int /*<<< orphan*/  REG_PROCESS_CTRL ; 
 unsigned long FUNC0 (struct zx_tdm_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct zx_tdm_info*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC2(struct zx_tdm_info *tdm, bool on)
{
	unsigned long val;

	val = FUNC0(tdm, REG_PROCESS_CTRL);
	if (on)
		val |= PROCESS_TX_EN | PROCESS_TDM_EN;
	else
		val &= ~(PROCESS_TX_EN | PROCESS_TDM_EN);
	FUNC1(tdm, REG_PROCESS_CTRL, val);
}