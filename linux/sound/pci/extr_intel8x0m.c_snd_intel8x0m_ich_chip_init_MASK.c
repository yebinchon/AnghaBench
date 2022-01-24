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
struct intel8x0m {scalar_t__ device_type; TYPE_2__* ac97; TYPE_1__* card; } ;
struct TYPE_4__ {int /*<<< orphan*/  num; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ DEVICE_SIS ; 
 int EIO ; 
 int /*<<< orphan*/  GLOB_CNT ; 
 int /*<<< orphan*/  GLOB_STA ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int ICH_AC97COLD ; 
 unsigned int ICH_AC97WARM ; 
 unsigned int ICH_ACLINK ; 
 unsigned int ICH_MIINT ; 
 unsigned int ICH_MOINT ; 
 unsigned int ICH_PCR ; 
 unsigned int ICH_RCS ; 
 unsigned int ICH_SCR ; 
 unsigned int ICH_TCR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 unsigned int FUNC2 (struct intel8x0m*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct intel8x0m*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct intel8x0m*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct intel8x0m*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct intel8x0m*,int,int) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 

__attribute__((used)) static int FUNC10(struct intel8x0m *chip, int probing)
{
	unsigned long end_time;
	unsigned int cnt, status, nstatus;
	
	/* put logic to right state */
	/* first clear status bits */
	status = ICH_RCS | ICH_MIINT | ICH_MOINT;
	cnt = FUNC3(chip, FUNC0(GLOB_STA));
	FUNC5(chip, FUNC0(GLOB_STA), cnt & status);

	/* ACLink on, 2 channels */
	cnt = FUNC3(chip, FUNC0(GLOB_CNT));
	cnt &= ~(ICH_ACLINK);
	/* finish cold or do warm reset */
	cnt |= (cnt & ICH_AC97COLD) == 0 ? ICH_AC97COLD : ICH_AC97WARM;
	FUNC5(chip, FUNC0(GLOB_CNT), cnt);
	FUNC9(500, 1000); /* give warm reset some time */
	end_time = jiffies + HZ / 4;
	do {
		if ((FUNC3(chip, FUNC0(GLOB_CNT)) & ICH_AC97WARM) == 0)
			goto __ok;
		FUNC7(1);
	} while (FUNC8(end_time, jiffies));
	FUNC1(chip->card->dev, "AC'97 warm reset still in progress? [0x%x]\n",
		   FUNC3(chip, FUNC0(GLOB_CNT)));
	return -EIO;

      __ok:
	if (probing) {
		/* wait for any codec ready status.
		 * Once it becomes ready it should remain ready
		 * as long as we do not disable the ac97 link.
		 */
		end_time = jiffies + HZ;
		do {
			status = FUNC3(chip, FUNC0(GLOB_STA)) &
				(ICH_PCR | ICH_SCR | ICH_TCR);
			if (status)
				break;
			FUNC7(1);
		} while (FUNC8(end_time, jiffies));
		if (! status) {
			/* no codec is found */
			FUNC1(chip->card->dev,
				"codec_ready: codec is not ready [0x%x]\n",
				   FUNC3(chip, FUNC0(GLOB_STA)));
			return -EIO;
		}

		/* up to two codecs (modem cannot be tertiary with ICH4) */
		nstatus = ICH_PCR | ICH_SCR;

		/* wait for other codecs ready status. */
		end_time = jiffies + HZ / 4;
		while (status != nstatus && FUNC8(end_time, jiffies)) {
			FUNC7(1);
			status |= FUNC3(chip, FUNC0(GLOB_STA)) & nstatus;
		}

	} else {
		/* resume phase */
		status = 0;
		if (chip->ac97)
			status |= FUNC2(chip, chip->ac97->num);
		/* wait until all the probed codecs are ready */
		end_time = jiffies + HZ;
		do {
			nstatus = FUNC3(chip, FUNC0(GLOB_STA)) &
				(ICH_PCR | ICH_SCR | ICH_TCR);
			if (status == nstatus)
				break;
			FUNC7(1);
		} while (FUNC8(end_time, jiffies));
	}

	if (chip->device_type == DEVICE_SIS) {
		/* unmute the output on SIS7012 */
		FUNC6(chip, 0x4c, FUNC4(chip, 0x4c) | 1);
	}

      	return 0;
}