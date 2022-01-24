#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_ac97 {unsigned short* regs; int /*<<< orphan*/  reg_mutex; int /*<<< orphan*/  reg_accessed; TYPE_2__* bus; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* write ) (struct snd_ac97*,unsigned short,unsigned short) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ac97*,unsigned short) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_ac97*,unsigned short,unsigned short) ; 

int FUNC5(struct snd_ac97 *ac97, unsigned short reg, unsigned short value)
{
	int change;

	if (!FUNC3(ac97, reg))
		return -EINVAL;
	FUNC0(&ac97->reg_mutex);
	change = ac97->regs[reg] != value;
	if (change) {
		ac97->regs[reg] = value;
		ac97->bus->ops->write(ac97, reg, value);
	}
	FUNC2(reg, ac97->reg_accessed);
	FUNC1(&ac97->reg_mutex);
	return change;
}