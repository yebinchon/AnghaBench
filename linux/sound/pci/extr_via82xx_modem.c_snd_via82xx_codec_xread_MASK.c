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
struct via82xx_modem {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97 ; 
 int /*<<< orphan*/  FUNC0 (struct via82xx_modem*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline unsigned int FUNC2(struct via82xx_modem *chip)
{
	return FUNC1(FUNC0(chip, AC97));
}