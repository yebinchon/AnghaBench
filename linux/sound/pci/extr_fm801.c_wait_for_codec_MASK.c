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
struct fm801 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_CMD ; 
 int EIO ; 
 unsigned int FM801_AC97_ADDR_SHIFT ; 
 int FM801_AC97_BUSY ; 
 unsigned short FM801_AC97_READ ; 
 int FM801_AC97_VALID ; 
 int FUNC0 (struct fm801*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fm801*,int /*<<< orphan*/ ,unsigned short) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct fm801 *chip, unsigned int codec_id,
			  unsigned short reg, unsigned long waits)
{
	unsigned long timeout = jiffies + waits;

	FUNC1(chip, AC97_CMD,
		     reg | (codec_id << FM801_AC97_ADDR_SHIFT) | FM801_AC97_READ);
	FUNC4(5);
	do {
		if ((FUNC0(chip, AC97_CMD) &
		     (FM801_AC97_VALID | FM801_AC97_BUSY)) == FM801_AC97_VALID)
			return 0;
		FUNC2(1);
	} while (FUNC3(timeout, jiffies));
	return -EIO;
}