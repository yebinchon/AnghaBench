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
struct vx_rmh {int DspStat; scalar_t__ LgStat; int* Stat; } ;
struct vx_core {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IRQ_MESS_WRITE_END ; 
 int /*<<< orphan*/  IRQ_MESS_WRITE_NEXT ; 
#define  RMH_SSIZE_ARG 129 
 int RMH_SSIZE_FIXED ; 
#define  RMH_SSIZE_MASK 128 
 int /*<<< orphan*/  RXH ; 
 int /*<<< orphan*/  RXL ; 
 int /*<<< orphan*/  RXM ; 
 int SIZE_MAX_STATUS ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct vx_core*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct vx_core*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct vx_core*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct vx_core*) ; 

__attribute__((used)) static int FUNC5(struct vx_core *chip, struct vx_rmh *rmh)
{
	int i, err, val, size;

	/* no read necessary? */
	if (rmh->DspStat == RMH_SSIZE_FIXED && rmh->LgStat == 0)
		return 0;

	/* Wait for RX full (with timeout protection)
	 * The first word of status is in RX
	 */
	err = FUNC4(chip);
	if (err < 0)
		return err;

	/* Read RX */
	val = FUNC1(chip, RXH) << 16;
	val |= FUNC1(chip, RXM) << 8;
	val |= FUNC1(chip, RXL);

	/* If status given by DSP, let's decode its size */
	switch (rmh->DspStat) {
	case RMH_SSIZE_ARG:
		size = val & 0xff;
		rmh->Stat[0] = val & 0xffff00;
		rmh->LgStat = size + 1;
		break;
	case RMH_SSIZE_MASK:
		/* Let's count the arg numbers from a mask */
		rmh->Stat[0] = val;
		size = 0;
		while (val) {
			if (val & 0x01)
				size++;
			val >>= 1;
		}
		rmh->LgStat = size + 1;
		break;
	default:
		/* else retrieve the status length given by the driver */
		size = rmh->LgStat;
		rmh->Stat[0] = val;  /* Val is the status 1st word */
		size--;              /* hence adjust remaining length */
		break;
        }

	if (size < 1)
		return 0;
	if (FUNC0(size >= SIZE_MAX_STATUS))
		return -EINVAL;

	for (i = 1; i <= size; i++) {
		/* trigger an irq MESS_WRITE_NEXT */
		err = FUNC2(chip, IRQ_MESS_WRITE_NEXT);
		if (err < 0)
			return err;
		/* Wait for RX full (with timeout protection) */
		err = FUNC4(chip);
		if (err < 0)
			return err;
		rmh->Stat[i] = FUNC1(chip, RXH) << 16;
		rmh->Stat[i] |= FUNC1(chip, RXM) <<  8;
		rmh->Stat[i] |= FUNC1(chip, RXL);
	}

	return FUNC3(chip, IRQ_MESS_WRITE_END);
}