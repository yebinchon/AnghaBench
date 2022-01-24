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
struct snd_ali {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_ali*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ALI_STIMER ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct snd_ali*) ; 

__attribute__((used)) static void FUNC4(struct snd_ali *codec,int interval)
{
	unsigned long  begintimer,currenttimer;

	begintimer   = FUNC2(FUNC0(codec, ALI_STIMER));
	currenttimer = FUNC2(FUNC0(codec, ALI_STIMER));

	while (currenttimer < begintimer + interval) {
		if (FUNC3(codec) < 0)
			break;
		currenttimer = FUNC2(FUNC0(codec,  ALI_STIMER));
		FUNC1();
	}
}