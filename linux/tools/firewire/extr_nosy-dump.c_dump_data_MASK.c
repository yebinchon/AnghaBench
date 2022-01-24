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
 size_t FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(unsigned char *data, int length)
{
	int i, print_length;

	if (length > 128)
		print_length = 128;
	else
		print_length = length;

	for (i = 0; i < print_length; i++)
		FUNC1("%s%02hhx",
		       (i % 4 == 0 && i != 0) ? " " : "",
		       data[FUNC0(i)]);

	if (print_length < length)
		FUNC1(" (%d more bytes)", length - print_length);
}