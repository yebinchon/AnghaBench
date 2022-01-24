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
struct snd_opl4 {int /*<<< orphan*/  chset; int /*<<< orphan*/  off_voices; TYPE_1__* voices; int /*<<< orphan*/  on_voices; int /*<<< orphan*/  reg_lock; } ;
struct TYPE_2__ {int number; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OPL4_DAMP_BIT ; 
 int OPL4_MAX_VOICES ; 
 scalar_t__ OPL4_REG_MISC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_opl4*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC7(struct snd_opl4 *opl4)
{
	unsigned long flags;
	int i;

	FUNC5(&opl4->reg_lock, flags);
	for (i = 0; i < OPL4_MAX_VOICES; i++)
		FUNC4(opl4, OPL4_REG_MISC + i, OPL4_DAMP_BIT);
	FUNC6(&opl4->reg_lock, flags);

	FUNC0(&opl4->off_voices);
	FUNC0(&opl4->on_voices);
	FUNC2(opl4->voices, 0, sizeof(opl4->voices));
	for (i = 0; i < OPL4_MAX_VOICES; i++) {
		opl4->voices[i].number = i;
		FUNC1(&opl4->voices[i].list, &opl4->off_voices);
	}

	FUNC3(opl4->chset);
}