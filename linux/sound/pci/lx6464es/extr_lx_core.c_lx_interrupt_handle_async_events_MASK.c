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
typedef  int u64 ;
typedef  int u32 ;
struct lx6464es {TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int MASK_SYS_STATUS_EOBI ; 
 int MASK_SYS_STATUS_EOBO ; 
 int MASK_SYS_STATUS_FREQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct lx6464es*,int*) ; 

__attribute__((used)) static int FUNC2(struct lx6464es *chip, u32 irqsrc,
					    int *r_freq_changed,
					    u64 *r_notified_in_pipe_mask,
					    u64 *r_notified_out_pipe_mask)
{
	int err;
	u32 stat[9];		/* answer from CMD_04_GET_EVENT */

	/* We can optimize this to not read dumb events.
	 * Answer words are in the following order:
	 * Stat[0]	general status
	 * Stat[1]	end of buffer OUT pF
	 * Stat[2]	end of buffer OUT pf
	 * Stat[3]	end of buffer IN pF
	 * Stat[4]	end of buffer IN pf
	 * Stat[5]	MSB underrun
	 * Stat[6]	LSB underrun
	 * Stat[7]	MSB overrun
	 * Stat[8]	LSB overrun
	 * */

	int eb_pending_out = (irqsrc & MASK_SYS_STATUS_EOBO) ? 1 : 0;
	int eb_pending_in  = (irqsrc & MASK_SYS_STATUS_EOBI) ? 1 : 0;

	*r_freq_changed = (irqsrc & MASK_SYS_STATUS_FREQ) ? 1 : 0;

	err = FUNC1(chip, stat);
	if (err < 0)
		return err;

	if (eb_pending_in) {
		*r_notified_in_pipe_mask = ((u64)stat[3] << 32)
			+ stat[4];
		FUNC0(chip->card->dev, "interrupt: EOBI pending %llx\n",
			    *r_notified_in_pipe_mask);
	}
	if (eb_pending_out) {
		*r_notified_out_pipe_mask = ((u64)stat[1] << 32)
			+ stat[2];
		FUNC0(chip->card->dev, "interrupt: EOBO pending %llx\n",
			    *r_notified_out_pipe_mask);
	}

	/* todo: handle xrun notification */

	return err;
}