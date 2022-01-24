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
struct snd_cs4231 {unsigned char mce_bit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_cs4231*,int /*<<< orphan*/ ) ; 
 int CS4231_INIT ; 
 int /*<<< orphan*/  REG ; 
 int /*<<< orphan*/  REGSEL ; 
 int FUNC1 (struct snd_cs4231*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_cs4231*,unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct snd_cs4231*) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(struct snd_cs4231 *chip, unsigned char reg,
			    unsigned char value)
{
	FUNC4(chip);
#ifdef CONFIG_SND_DEBUG
	if (__cs4231_readb(chip, CS4231U(chip, REGSEL)) & CS4231_INIT)
		snd_printdd("out: auto calibration time out - reg = 0x%x, "
			    "value = 0x%x\n",
			    reg, value);
#endif
	FUNC2(chip, chip->mce_bit | reg, FUNC0(chip, REGSEL));
	FUNC6();
	FUNC2(chip, value, FUNC0(chip, REG));
	FUNC3();
}