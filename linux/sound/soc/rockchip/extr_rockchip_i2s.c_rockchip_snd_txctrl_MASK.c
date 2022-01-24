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
struct rk_i2s_dev {int tx_start; int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; int /*<<< orphan*/  rx_start; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2S_CLR ; 
 int I2S_CLR_RXC ; 
 int I2S_CLR_TXC ; 
 int /*<<< orphan*/  I2S_DMACR ; 
 int I2S_DMACR_TDE_DISABLE ; 
 int I2S_DMACR_TDE_ENABLE ; 
 int /*<<< orphan*/  I2S_XFER ; 
 int I2S_XFER_RXS_START ; 
 int I2S_XFER_RXS_STOP ; 
 int I2S_XFER_TXS_START ; 
 int I2S_XFER_TXS_STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct rk_i2s_dev *i2s, int on)
{
	unsigned int val = 0;
	int retry = 10;

	if (on) {
		FUNC2(i2s->regmap, I2S_DMACR,
				   I2S_DMACR_TDE_ENABLE, I2S_DMACR_TDE_ENABLE);

		FUNC2(i2s->regmap, I2S_XFER,
				   I2S_XFER_TXS_START | I2S_XFER_RXS_START,
				   I2S_XFER_TXS_START | I2S_XFER_RXS_START);

		i2s->tx_start = true;
	} else {
		i2s->tx_start = false;

		FUNC2(i2s->regmap, I2S_DMACR,
				   I2S_DMACR_TDE_ENABLE, I2S_DMACR_TDE_DISABLE);

		if (!i2s->rx_start) {
			FUNC2(i2s->regmap, I2S_XFER,
					   I2S_XFER_TXS_START |
					   I2S_XFER_RXS_START,
					   I2S_XFER_TXS_STOP |
					   I2S_XFER_RXS_STOP);

			FUNC3(150);
			FUNC2(i2s->regmap, I2S_CLR,
					   I2S_CLR_TXC | I2S_CLR_RXC,
					   I2S_CLR_TXC | I2S_CLR_RXC);

			FUNC1(i2s->regmap, I2S_CLR, &val);

			/* Should wait for clear operation to finish */
			while (val) {
				FUNC1(i2s->regmap, I2S_CLR, &val);
				retry--;
				if (!retry) {
					FUNC0(i2s->dev, "fail to clear\n");
					break;
				}
			}
		}
	}
}