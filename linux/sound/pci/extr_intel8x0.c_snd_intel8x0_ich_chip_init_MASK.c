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
struct intel8x0 {scalar_t__ device_type; unsigned int codec_isr_bits; int ncodecs; unsigned int* codec_bit; size_t* ac97_sdin; int /*<<< orphan*/  pci; scalar_t__* ac97; TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ DEVICE_NFORCE ; 
 scalar_t__ DEVICE_SIS ; 
 int EIO ; 
 int /*<<< orphan*/  GLOB_STA ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int ICH_MCINT ; 
 unsigned int ICH_NVSPINT ; 
 unsigned int ICH_PIINT ; 
 unsigned int ICH_POINT ; 
 unsigned int ICH_RCS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 unsigned int FUNC2 (struct intel8x0*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct intel8x0*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct intel8x0*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct intel8x0*,int,int) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (struct intel8x0*) ; 
 int FUNC10 (struct intel8x0*) ; 
 int FUNC11 (struct intel8x0*) ; 
 int /*<<< orphan*/  spdif_aclink ; 
 scalar_t__ FUNC12 (unsigned long,int) ; 

__attribute__((used)) static int FUNC13(struct intel8x0 *chip, int probing)
{
	unsigned long end_time;
	unsigned int status, nstatus;
	unsigned int cnt;
	int err;

	/* put logic to right state */
	/* first clear status bits */
	status = ICH_RCS | ICH_MCINT | ICH_POINT | ICH_PIINT;
	if (chip->device_type == DEVICE_NFORCE)
		status |= ICH_NVSPINT;
	cnt = FUNC2(chip, FUNC0(GLOB_STA));
	FUNC4(chip, FUNC0(GLOB_STA), cnt & status);

	if (FUNC9(chip))
		err = FUNC10(chip);
	else
		err = FUNC11(chip);
	if (err < 0)
		return err;

	if (probing) {
		/* wait for any codec ready status.
		 * Once it becomes ready it should remain ready
		 * as long as we do not disable the ac97 link.
		 */
		end_time = jiffies + HZ;
		do {
			status = FUNC2(chip, FUNC0(GLOB_STA)) &
				chip->codec_isr_bits;
			if (status)
				break;
			FUNC8(1);
		} while (FUNC12(end_time, jiffies));
		if (! status) {
			/* no codec is found */
			FUNC1(chip->card->dev,
				"codec_ready: codec is not ready [0x%x]\n",
				   FUNC2(chip, FUNC0(GLOB_STA)));
			return -EIO;
		}

		/* wait for other codecs ready status. */
		end_time = jiffies + HZ / 4;
		while (status != chip->codec_isr_bits &&
		       FUNC12(end_time, jiffies)) {
			FUNC8(1);
			status |= FUNC2(chip, FUNC0(GLOB_STA)) &
				chip->codec_isr_bits;
		}

	} else {
		/* resume phase */
		int i;
		status = 0;
		for (i = 0; i < chip->ncodecs; i++)
			if (chip->ac97[i])
				status |= chip->codec_bit[chip->ac97_sdin[i]];
		/* wait until all the probed codecs are ready */
		end_time = jiffies + HZ;
		do {
			nstatus = FUNC2(chip, FUNC0(GLOB_STA)) &
				chip->codec_isr_bits;
			if (status == nstatus)
				break;
			FUNC8(1);
		} while (FUNC12(end_time, jiffies));
	}

	if (chip->device_type == DEVICE_SIS) {
		/* unmute the output on SIS7012 */
		FUNC5(chip, 0x4c, FUNC3(chip, 0x4c) | 1);
	}
	if (chip->device_type == DEVICE_NFORCE && !spdif_aclink) {
		/* enable SPDIF interrupt */
		unsigned int val;
		FUNC6(chip->pci, 0x4c, &val);
		val |= 0x1000000;
		FUNC7(chip->pci, 0x4c, val);
	}
      	return 0;
}