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
struct sirf_usp {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  USP_RX_ENA ; 
 int /*<<< orphan*/  USP_RX_FIFO_OP ; 
 int /*<<< orphan*/  USP_TX_RX_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct sirf_usp *usp)
{
	FUNC0(usp->regmap, USP_TX_RX_ENABLE,
		USP_RX_ENA, ~USP_RX_ENA);
	/* FIFO stop */
	FUNC1(usp->regmap, USP_RX_FIFO_OP, 0);
}