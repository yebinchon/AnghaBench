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
typedef  int /*<<< orphan*/  u32 ;
struct echoaudio {TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int CHI32_VECTOR_BUSY ; 
 int /*<<< orphan*/  CHI32_VECTOR_REG ; 
 int EBUSY ; 
 int VECTOR_BUSY_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct echoaudio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct echoaudio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct echoaudio *chip, u32 command)
{
	int i;

	FUNC4();	/* Flush all pending writes before sending the command */

	/* Wait up to 100ms for the "vector busy" bit to be off */
	for (i = 0; i < VECTOR_BUSY_TIMEOUT; i++) {
		if (!(FUNC1(chip, CHI32_VECTOR_REG) &
		      CHI32_VECTOR_BUSY)) {
			FUNC2(chip, CHI32_VECTOR_REG, command);
			/*if (i)  DE_ACT(("send_vector time: %d\n", i));*/
			return 0;
		}
		FUNC3(1);
	}

	FUNC0(chip->card->dev, "timeout on send_vector\n");
	return -EBUSY;
}