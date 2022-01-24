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
typedef  int u8 ;
struct oxygen {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct oxygen*,int const) ; 

__attribute__((used)) static void FUNC1(struct oxygen *chip, u8 command,
			       unsigned int count, const u8 *params)
{
	unsigned int i;
	u8 checksum;

	FUNC0(chip, 0xfb);
	FUNC0(chip, 0xef);
	FUNC0(chip, command);
	FUNC0(chip, count);
	for (i = 0; i < count; ++i)
		FUNC0(chip, params[i]);
	checksum = 0xfb + 0xef + command + count;
	for (i = 0; i < count; ++i)
		checksum += params[i];
	FUNC0(chip, checksum);
}