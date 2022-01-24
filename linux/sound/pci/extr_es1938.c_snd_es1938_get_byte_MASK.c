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
 int ENODEV ; 
 int GET_LOOP_TIMEOUT ; 
 int /*<<< orphan*/  READDATA ; 
 int /*<<< orphan*/  FUNC0 (struct es1938*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned char) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct es1938 *chip)
{
	int i;
	unsigned char v;
	for (i = GET_LOOP_TIMEOUT; i; i--)
		if ((v = FUNC2(FUNC0(chip, STATUS))) & 0x80)
			return FUNC2(FUNC0(chip, READDATA));
	FUNC1(chip->card->dev, "get_byte timeout: status 0x02%x\n", v);
	return -ENODEV;
}