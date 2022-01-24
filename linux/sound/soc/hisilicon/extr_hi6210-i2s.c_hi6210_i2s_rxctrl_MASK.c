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
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;
struct hi6210_i2s {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  HII2S_I2S_CFG ; 
 int /*<<< orphan*/  HII2S_I2S_CFG__S2_IF_RX_EN ; 
 struct hi6210_i2s* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hi6210_i2s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hi6210_i2s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct snd_soc_dai *cpu_dai, int on)
{
	struct hi6210_i2s *i2s = FUNC0(cpu_dai->dev);
	u32 val;

	FUNC3(&i2s->lock);
	if (on) {
		val = FUNC1(i2s, HII2S_I2S_CFG);
		val |= HII2S_I2S_CFG__S2_IF_RX_EN;
		FUNC2(i2s, HII2S_I2S_CFG, val);
	} else {
		val = FUNC1(i2s, HII2S_I2S_CFG);
		val &= ~HII2S_I2S_CFG__S2_IF_RX_EN;
		FUNC2(i2s, HII2S_I2S_CFG, val);
	}
	FUNC4(&i2s->lock);
}