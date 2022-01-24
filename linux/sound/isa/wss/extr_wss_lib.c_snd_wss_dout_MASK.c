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
struct snd_wss {unsigned char mce_bit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int CS4231_INIT ; 
 int /*<<< orphan*/  REG ; 
 int /*<<< orphan*/  REGSEL ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct snd_wss*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_wss*,int /*<<< orphan*/ ,unsigned char) ; 

__attribute__((used)) static void FUNC5(struct snd_wss *chip, unsigned char reg,
			 unsigned char value)
{
	int timeout;

	for (timeout = 250;
	     timeout > 0 && (FUNC3(chip, FUNC0(REGSEL)) & CS4231_INIT);
	     timeout--)
		FUNC2(10);
	FUNC4(chip, FUNC0(REGSEL), chip->mce_bit | reg);
	FUNC4(chip, FUNC0(REG), value);
	FUNC1();
}