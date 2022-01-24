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
struct snd_miro {int /*<<< orphan*/ * res_mc_base; scalar_t__ mc_base; int /*<<< orphan*/  mc_base_size; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int) ; 
 unsigned char FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__,int /*<<< orphan*/ ,char*) ; 
 unsigned char FUNC4 (struct snd_miro*,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct snd_miro *chip)
{
	unsigned char value;

	chip->res_mc_base = FUNC3(chip->mc_base, chip->mc_base_size,
					   "OPTi9xx MC");
	if (chip->res_mc_base == NULL)
		return -ENOMEM;

	value = FUNC4(chip, FUNC0(1));
	if (value != 0xff && value != FUNC1(chip->mc_base + FUNC0(1)))
		if (value == FUNC4(chip, FUNC0(1)))
			return 0;

	FUNC2(chip->res_mc_base);
	chip->res_mc_base = NULL;

	return -ENODEV;
}