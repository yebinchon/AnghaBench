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

/* Variables and functions */
 int /*<<< orphan*/ * corrections ; 
 int corrections_count ; 
 int /*<<< orphan*/ * unicode_data ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(void)
{
	unsigned int unichar;
	int i;

	for (unichar = 0; unichar != 0x110000; unichar++)
		FUNC0(&unicode_data[unichar]);

	for (i = 0; i != corrections_count; i++)
		FUNC0(&corrections[i]);
}