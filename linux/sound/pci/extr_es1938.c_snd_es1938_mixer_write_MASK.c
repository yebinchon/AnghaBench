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
struct es1938 {TYPE_1__* card; int /*<<< orphan*/  mixer_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIXERADDR ; 
 int /*<<< orphan*/  MIXERDATA ; 
 int /*<<< orphan*/  FUNC0 (struct es1938*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct es1938 *chip, unsigned char reg, unsigned char val)
{
	unsigned long flags;
	FUNC3(&chip->mixer_lock, flags);
	FUNC2(reg, FUNC0(chip, MIXERADDR));
	FUNC2(val, FUNC0(chip, MIXERDATA));
	FUNC4(&chip->mixer_lock, flags);
	FUNC1(chip->card->dev, "Mixer reg %02x set to %02x\n", reg, val);
}