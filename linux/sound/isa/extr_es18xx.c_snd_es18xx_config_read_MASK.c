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
struct snd_es18xx {scalar_t__ ctrl_port; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct snd_es18xx *chip, unsigned char reg)
{
	int data;

	FUNC1(reg, chip->ctrl_port);
	data = FUNC0(chip->ctrl_port + 1);
	return data;
}