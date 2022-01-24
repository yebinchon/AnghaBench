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
struct snd_dice {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 unsigned int CLOCK_SOURCE_MASK ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_dice*,int /*<<< orphan*/ *) ; 

int FUNC2(struct snd_dice *dice,
					  unsigned int *source)
{
	__be32 info;
	int err;

	err = FUNC1(dice, &info);
	if (err >= 0)
		*source = FUNC0(info) & CLOCK_SOURCE_MASK;

	return err;
}