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
struct es1938 {int /*<<< orphan*/  mixer_lock; TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIXERADDR ; 
 int /*<<< orphan*/  MIXERDATA ; 
 int /*<<< orphan*/  FUNC0 (struct es1938*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned char,unsigned char,unsigned char) ; 
 unsigned char FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct es1938 *chip, unsigned char reg,
				 unsigned char mask, unsigned char val)
{
	unsigned long flags;
	unsigned char old, new, oval;
	FUNC4(&chip->mixer_lock, flags);
	FUNC3(reg, FUNC0(chip, MIXERADDR));
	old = FUNC2(FUNC0(chip, MIXERDATA));
	oval = old & mask;
	if (val != oval) {
		new = (old & ~mask) | (val & mask);
		FUNC3(new, FUNC0(chip, MIXERDATA));
		FUNC1(chip->card->dev,
			"Mixer reg %02x was %02x, set to %02x\n",
			   reg, old, new);
	}
	FUNC5(&chip->mixer_lock, flags);
	return oval;
}