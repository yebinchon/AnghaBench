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
struct oxygen {int* dac_volume; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct oxygen*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct oxygen*) ; 

__attribute__((used)) static void FUNC2(struct oxygen *chip)
{
	FUNC0(chip, 5, (127 - chip->dac_volume[0]) * 2);
	FUNC0(chip, 6, (127 - chip->dac_volume[1]) * 2);
	FUNC1(chip);
}