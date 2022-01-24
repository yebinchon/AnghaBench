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
struct rk3328_codec_priv {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  DAC_CHARGE_CURRENT_ALL_MASK ; 
 int /*<<< orphan*/  DAC_CHARGE_CURRENT_ALL_ON ; 
 int /*<<< orphan*/  DAC_CHARGE_PRECHARGE ; 
 int /*<<< orphan*/  DAC_CHARGE_XCHARGE_MASK ; 
 int /*<<< orphan*/  DAC_PRECHARGE_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct rk3328_codec_priv *rk3328, int wait_ms)
{
	FUNC1(rk3328->regmap, DAC_PRECHARGE_CTRL,
			   DAC_CHARGE_XCHARGE_MASK, DAC_CHARGE_PRECHARGE);
	FUNC0(10);
	FUNC1(rk3328->regmap, DAC_PRECHARGE_CTRL,
			   DAC_CHARGE_CURRENT_ALL_MASK,
			   DAC_CHARGE_CURRENT_ALL_ON);
	FUNC0(wait_ms);

	return 0;
}