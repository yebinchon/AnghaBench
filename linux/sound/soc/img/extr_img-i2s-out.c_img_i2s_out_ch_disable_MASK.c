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
typedef  int /*<<< orphan*/  u32 ;
struct img_i2s_out {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IMG_I2S_OUT_CHAN_CTL_ME_MASK ; 
 int /*<<< orphan*/  IMG_I2S_OUT_CH_CTL ; 
 int /*<<< orphan*/  FUNC0 (struct img_i2s_out*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct img_i2s_out*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct img_i2s_out *i2s, u32 chan)
{
	u32 reg;

	reg = FUNC0(i2s, chan, IMG_I2S_OUT_CH_CTL);
	reg &= ~IMG_I2S_OUT_CHAN_CTL_ME_MASK;
	FUNC1(i2s, chan, reg, IMG_I2S_OUT_CH_CTL);
}