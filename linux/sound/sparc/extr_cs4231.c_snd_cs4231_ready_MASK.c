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
struct snd_cs4231 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_cs4231*,int /*<<< orphan*/ ) ; 
 int CS4231_INIT ; 
 int /*<<< orphan*/  REGSEL ; 
 int FUNC1 (struct snd_cs4231*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct snd_cs4231 *chip)
{
	int timeout;

	for (timeout = 250; timeout > 0; timeout--) {
		int val = FUNC1(chip, FUNC0(chip, REGSEL));
		if ((val & CS4231_INIT) == 0)
			break;
		FUNC2(100);
	}
}