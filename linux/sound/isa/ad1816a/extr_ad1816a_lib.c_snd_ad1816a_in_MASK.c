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
struct snd_ad1816a {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char) ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ad1816a*) ; 

__attribute__((used)) static inline unsigned char FUNC3(struct snd_ad1816a *chip, unsigned char reg)
{
	FUNC2(chip);
	return FUNC1(FUNC0(reg));
}