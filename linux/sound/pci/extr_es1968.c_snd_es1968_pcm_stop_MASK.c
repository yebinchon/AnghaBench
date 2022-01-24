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
struct esschan {scalar_t__ mode; int /*<<< orphan*/ * apu; } ;
struct es1968 {int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 scalar_t__ ESM_MODE_CAPTURE ; 
 int /*<<< orphan*/  FUNC0 (struct es1968*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct es1968 *chip, struct esschan *es)
{
	FUNC1(&chip->reg_lock);
	FUNC0(chip, es->apu[0], 0);
	FUNC0(chip, es->apu[1], 0);
	if (es->mode == ESM_MODE_CAPTURE) {
		FUNC0(chip, es->apu[2], 0);
		FUNC0(chip, es->apu[3], 0);
	}
	FUNC2(&chip->reg_lock);
}