#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_5__ {int* cmd; int* stat; int stat_len; } ;
struct lx6464es {int /*<<< orphan*/  msg_lock; TYPE_2__ rmh; TYPE_1__* card; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BF_EOB ; 
 int BF_VALID ; 
 int BUFF_FLAGS_OFFSET ; 
 int /*<<< orphan*/  CMD_08_ASK_BUFFERS ; 
 int MASK_DATA_SIZE ; 
 int MAX_STREAM_BUFFER ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct lx6464es*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct lx6464es *chip, u32 pipe, int is_capture,
		  u32 *r_needed, u32 *r_freed, u32 *size_array)
{
	int err;
	u32 pipe_cmd = FUNC0(is_capture, pipe);

#ifdef CONFIG_SND_DEBUG
	if (size_array)
		memset(size_array, 0, sizeof(u32)*MAX_STREAM_BUFFER);
#endif

	*r_needed = 0;
	*r_freed = 0;

	FUNC5(&chip->msg_lock);
	FUNC2(&chip->rmh, CMD_08_ASK_BUFFERS);

	chip->rmh.cmd[0] |= pipe_cmd;

	err = FUNC3(chip, &chip->rmh);

	if (!err) {
		int i;
		for (i = 0; i < MAX_STREAM_BUFFER; ++i) {
			u32 stat = chip->rmh.stat[i];
			if (stat & (BF_EOB << BUFF_FLAGS_OFFSET)) {
				/* finished */
				*r_freed += 1;
				if (size_array)
					size_array[i] = stat & MASK_DATA_SIZE;
			} else if ((stat & (BF_VALID << BUFF_FLAGS_OFFSET))
				   == 0)
				/* free */
				*r_needed += 1;
		}

		FUNC1(chip->card->dev,
			"CMD_08_ASK_BUFFERS: needed %d, freed %d\n",
			    *r_needed, *r_freed);
		for (i = 0; i < MAX_STREAM_BUFFER; ++i) {
			for (i = 0; i != chip->rmh.stat_len; ++i)
				FUNC1(chip->card->dev,
					"  stat[%d]: %x, %x\n", i,
					    chip->rmh.stat[i],
					    chip->rmh.stat[i] & MASK_DATA_SIZE);
		}
	}

	FUNC6(&chip->msg_lock);
	return err;
}