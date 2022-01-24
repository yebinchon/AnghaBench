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
struct snd_emu10k1_fx8010_code {int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  name; } ;
struct snd_emu10k1 {TYPE_1__ fx8010; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct snd_emu10k1*,struct snd_emu10k1_fx8010_code*) ; 
 int FUNC3 (struct snd_emu10k1*,struct snd_emu10k1_fx8010_code*) ; 
 int FUNC4 (struct snd_emu10k1*,struct snd_emu10k1_fx8010_code*) ; 
 int FUNC5 (struct snd_emu10k1*,struct snd_emu10k1_fx8010_code*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct snd_emu10k1 *emu,
				  struct snd_emu10k1_fx8010_code *icode)
{
	int err;

	FUNC0(&emu->fx8010.lock);
	FUNC6(icode->name, emu->fx8010.name, sizeof(icode->name));
	/* ok, do the main job */
	err = FUNC3(emu, icode);
	if (err >= 0)
		err = FUNC5(emu, icode);
	if (err >= 0)
		err = FUNC2(emu, icode);
	if (err >= 0)
		err = FUNC4(emu, icode);
	FUNC1(&emu->fx8010.lock);
	return err;
}