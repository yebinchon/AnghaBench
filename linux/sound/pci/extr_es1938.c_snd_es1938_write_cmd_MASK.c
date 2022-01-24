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
struct es1938 {TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  READSTATUS ; 
 int /*<<< orphan*/  FUNC0 (struct es1938*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WRITEDATA ; 
 int WRITE_LOOP_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned char,unsigned char) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct es1938 *chip, unsigned char cmd)
{
	int i;
	unsigned char v;
	for (i = 0; i < WRITE_LOOP_TIMEOUT; i++) {
		if (!(v = FUNC2(FUNC0(chip, READSTATUS)) & 0x80)) {
			FUNC3(cmd, FUNC0(chip, WRITEDATA));
			return;
		}
	}
	FUNC1(chip->card->dev,
		"snd_es1938_write_cmd timeout (0x02%x/0x02%x)\n", cmd, v);
}