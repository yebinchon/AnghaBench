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
 unsigned int FIFOCTRL_RX_FIFO_RST ; 
 unsigned int FUNC0 (int) ; 
 unsigned int FIFOCTRL_TX_FIFO_RST ; 
 unsigned int INT_DISABLE_ALL ; 
 unsigned int INT_STATUS_MASK ; 
 unsigned int PROCESS_DISABLE_ALL ; 
 int /*<<< orphan*/  REG_INT_EN ; 
 int /*<<< orphan*/  REG_INT_STATUS ; 
 int /*<<< orphan*/  REG_PROCESS_CTRL ; 
 int /*<<< orphan*/  REG_RX_FIFO_CTRL ; 
 int /*<<< orphan*/  REG_TIMING_CTRL ; 
 int /*<<< orphan*/  REG_TX_FIFO_CTRL ; 
 unsigned int RXTH_MASK ; 
 unsigned int RX_FIFO_RST_MASK ; 
 unsigned int TIMING_CLK_SEL_DEF ; 
 unsigned int TIMING_CLK_SEL_MASK ; 
 unsigned int TIMING_LSB_FIRST ; 
 unsigned int TXTH_MASK ; 
 unsigned int TX_FIFO_RST_MASK ; 
 unsigned int FUNC1 (struct zx_tdm_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct zx_tdm_info*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct zx_tdm_info *tdm)
{
	unsigned int val;

	FUNC2(tdm, REG_PROCESS_CTRL, PROCESS_DISABLE_ALL);

	val = FUNC1(tdm, REG_TIMING_CTRL);
	val |= TIMING_LSB_FIRST;
	val &= ~TIMING_CLK_SEL_MASK;
	val |= TIMING_CLK_SEL_DEF;
	FUNC2(tdm, REG_TIMING_CTRL, val);

	FUNC2(tdm, REG_INT_EN, INT_DISABLE_ALL);
	/*
	 * write INT_STATUS register to clear it.
	 */
	FUNC2(tdm, REG_INT_STATUS, INT_STATUS_MASK);
	FUNC2(tdm, REG_RX_FIFO_CTRL, FIFOCTRL_RX_FIFO_RST);
	FUNC2(tdm, REG_TX_FIFO_CTRL, FIFOCTRL_TX_FIFO_RST);

	val = FUNC1(tdm, REG_RX_FIFO_CTRL);
	val &= ~(RXTH_MASK | RX_FIFO_RST_MASK);
	val |= FUNC0(8);
	FUNC2(tdm, REG_RX_FIFO_CTRL, val);

	val = FUNC1(tdm, REG_TX_FIFO_CTRL);
	val &= ~(TXTH_MASK | TX_FIFO_RST_MASK);
	val |= FUNC0(8);
	FUNC2(tdm, REG_TX_FIFO_CTRL, val);
}