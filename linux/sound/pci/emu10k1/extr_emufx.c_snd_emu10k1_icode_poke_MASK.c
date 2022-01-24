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
struct TYPE_2__ {int dbg; int /*<<< orphan*/  lock; int /*<<< orphan*/  name; } ;
struct snd_emu10k1 {TYPE_1__ fx8010; scalar_t__ audigy; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_DBG ; 
 int A_DBG_SINGLE_STEP ; 
 int /*<<< orphan*/  DBG ; 
 int EMU10K1_DBG_SINGLE_STEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct snd_emu10k1*,struct snd_emu10k1_fx8010_code*,int) ; 
 int FUNC3 (struct snd_emu10k1*,struct snd_emu10k1_fx8010_code*,int) ; 
 int FUNC4 (struct snd_emu10k1*,struct snd_emu10k1_fx8010_code*,int) ; 
 int FUNC5 (struct snd_emu10k1*,struct snd_emu10k1_fx8010_code*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_emu10k1*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct snd_emu10k1*,struct snd_emu10k1_fx8010_code*,int) ; 
 int FUNC8 (struct snd_emu10k1*,struct snd_emu10k1_fx8010_code*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(struct snd_emu10k1 *emu,
				  struct snd_emu10k1_fx8010_code *icode,
				  bool in_kernel)
{
	int err = 0;

	FUNC0(&emu->fx8010.lock);
	err = FUNC8(emu, icode, in_kernel);
	if (err < 0)
		goto __error;
	FUNC9(emu->fx8010.name, icode->name, sizeof(emu->fx8010.name));
	/* stop FX processor - this may be dangerous, but it's better to miss
	   some samples than generate wrong ones - [jk] */
	if (emu->audigy)
		FUNC6(emu, A_DBG, 0, emu->fx8010.dbg | A_DBG_SINGLE_STEP);
	else
		FUNC6(emu, DBG, 0, emu->fx8010.dbg | EMU10K1_DBG_SINGLE_STEP);
	/* ok, do the main job */
	err = FUNC4(emu, icode, in_kernel);
	if (err < 0)
		goto __error;
	err = FUNC5(emu, icode, in_kernel);
	if (err < 0)
		goto __error;
	err = FUNC7(emu, icode, in_kernel);
	if (err < 0)
		goto __error;
	err = FUNC3(emu, icode, in_kernel);
	if (err < 0)
		goto __error;
	err = FUNC2(emu, icode, in_kernel);
	if (err < 0)
		goto __error;
	/* start FX processor when the DSP code is updated */
	if (emu->audigy)
		FUNC6(emu, A_DBG, 0, emu->fx8010.dbg);
	else
		FUNC6(emu, DBG, 0, emu->fx8010.dbg);
      __error:
	FUNC1(&emu->fx8010.lock);
	return err;
}