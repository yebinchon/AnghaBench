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
struct TYPE_4__ {int cmds; } ;
struct TYPE_3__ {int wp; void** buf; } ;
struct lola {unsigned int last_cmd_nid; unsigned int last_verb; unsigned int last_data; unsigned int last_extdata; int /*<<< orphan*/  reg_lock; TYPE_2__ rirb; TYPE_1__ corb; } ;

/* Variables and functions */
 int /*<<< orphan*/  BAR0 ; 
 int /*<<< orphan*/  CORBWP ; 
 int EIO ; 
 int LOLA_CORB_ENTRIES ; 
 void* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct lola*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct lola *chip, unsigned int nid,
			  unsigned int verb, unsigned int data,
			  unsigned int extdata)
{
	unsigned long flags;
	int ret = -EIO;

	chip->last_cmd_nid = nid;
	chip->last_verb = verb;
	chip->last_data = data;
	chip->last_extdata = extdata;
	data |= (nid << 20) | (verb << 8);

	FUNC3(&chip->reg_lock, flags);
	if (chip->rirb.cmds < LOLA_CORB_ENTRIES - 1) {
		unsigned int wp = chip->corb.wp + 1;
		wp %= LOLA_CORB_ENTRIES;
		chip->corb.wp = wp;
		chip->corb.buf[wp * 2] = FUNC0(data);
		chip->corb.buf[wp * 2 + 1] = FUNC0(extdata);
		FUNC1(chip, BAR0, CORBWP, wp);
		chip->rirb.cmds++;
		FUNC2();
		ret = 0;
	}
	FUNC4(&chip->reg_lock, flags);
	return ret;
}