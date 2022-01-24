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
struct sun4i_i2s {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  SUN4I_I2S_CTRL_REG ; 
 int /*<<< orphan*/  SUN4I_I2S_CTRL_RX_EN ; 
 int /*<<< orphan*/  SUN4I_I2S_DMA_INT_CTRL_REG ; 
 int /*<<< orphan*/  SUN4I_I2S_DMA_INT_CTRL_RX_DRQ_EN ; 
 int /*<<< orphan*/  SUN4I_I2S_FIFO_CTRL_FLUSH_RX ; 
 int /*<<< orphan*/  SUN4I_I2S_FIFO_CTRL_REG ; 
 int /*<<< orphan*/  SUN4I_I2S_RX_CNT_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct sun4i_i2s *i2s)
{
	/* Flush RX FIFO */
	FUNC0(i2s->regmap, SUN4I_I2S_FIFO_CTRL_REG,
			   SUN4I_I2S_FIFO_CTRL_FLUSH_RX,
			   SUN4I_I2S_FIFO_CTRL_FLUSH_RX);

	/* Clear RX counter */
	FUNC1(i2s->regmap, SUN4I_I2S_RX_CNT_REG, 0);

	/* Enable RX Block */
	FUNC0(i2s->regmap, SUN4I_I2S_CTRL_REG,
			   SUN4I_I2S_CTRL_RX_EN,
			   SUN4I_I2S_CTRL_RX_EN);

	/* Enable RX DRQ */
	FUNC0(i2s->regmap, SUN4I_I2S_DMA_INT_CTRL_REG,
			   SUN4I_I2S_DMA_INT_CTRL_RX_DRQ_EN,
			   SUN4I_I2S_DMA_INT_CTRL_RX_DRQ_EN);
}