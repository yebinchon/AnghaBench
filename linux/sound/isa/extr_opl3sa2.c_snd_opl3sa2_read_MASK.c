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
struct snd_opl3sa2 {int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 unsigned char FUNC0 (struct snd_opl3sa2*,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static unsigned char FUNC3(struct snd_opl3sa2 *chip, unsigned char reg)
{
	unsigned long flags;
	unsigned char result;

	FUNC1(&chip->reg_lock, flags);
	result = FUNC0(chip, reg);
	FUNC2(&chip->reg_lock, flags);
	return result;
}