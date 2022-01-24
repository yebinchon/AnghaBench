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
struct intel8x0m {TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACC_SEMA ; 
 int EBUSY ; 
 int EIO ; 
 int /*<<< orphan*/  GLOB_STA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ICH_CAS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,unsigned int) ; 
 unsigned int FUNC2 (struct intel8x0m*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct intel8x0m*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct intel8x0m*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (struct intel8x0m*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct intel8x0m *chip, unsigned int codec)
{
	int time;
	
	if (codec > 1)
		return -EIO;
	codec = FUNC2(chip, codec);

	/* codec ready ? */
	if ((FUNC5(chip, FUNC0(GLOB_STA)) & codec) == 0)
		return -EIO;

	/* Anyone holding a semaphore for 1 msec should be shot... */
	time = 100;
      	do {
      		if (!(FUNC4(chip, FUNC0(ACC_SEMA)) & ICH_CAS))
      			return 0;
		FUNC6(10);
	} while (time--);

	/* access to some forbidden (non existent) ac97 registers will not
	 * reset the semaphore. So even if you don't get the semaphore, still
	 * continue the access. We don't need the semaphore anyway. */
	FUNC1(chip->card->dev,
		"codec_semaphore: semaphore is not ready [0x%x][0x%x]\n",
			FUNC4(chip, FUNC0(ACC_SEMA)), FUNC5(chip, FUNC0(GLOB_STA)));
	FUNC3(chip, 0);	/* clear semaphore flag */
	/* I don't care about the semaphore */
	return -EBUSY;
}