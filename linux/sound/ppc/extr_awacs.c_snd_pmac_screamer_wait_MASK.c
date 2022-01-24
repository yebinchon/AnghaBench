#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_pmac {TYPE_1__* awacs; } ;
struct TYPE_2__ {int /*<<< orphan*/  codec_stat; } ;

/* Variables and functions */
 int MASK_VALID ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(struct snd_pmac *chip)
{
	long timeout = 2000;
	while (!(FUNC0(&chip->awacs->codec_stat) & MASK_VALID)) {
		FUNC1(1);
		if (! --timeout) {
			FUNC2("snd_pmac_screamer_wait timeout\n");
			break;
		}
	}
}