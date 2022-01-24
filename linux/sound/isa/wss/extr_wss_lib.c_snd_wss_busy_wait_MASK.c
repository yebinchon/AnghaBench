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
struct snd_wss {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int CS4231_INIT ; 
 int /*<<< orphan*/  REGSEL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct snd_wss*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct snd_wss *chip)
{
	int timeout;

	/* huh.. looks like this sequence is proper for CS4231A chip (GUS MAX) */
	for (timeout = 5; timeout > 0; timeout--)
		FUNC2(chip, FUNC0(REGSEL));
	/* end of cleanup sequence */
	for (timeout = 25000;
	     timeout > 0 && (FUNC2(chip, FUNC0(REGSEL)) & CS4231_INIT);
	     timeout--)
		FUNC1(10);
}