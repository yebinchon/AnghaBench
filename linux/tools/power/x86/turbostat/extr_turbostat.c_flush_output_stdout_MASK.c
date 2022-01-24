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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ outf ; 
 int /*<<< orphan*/  outp ; 
 int /*<<< orphan*/  output_buffer ; 
 scalar_t__ stderr ; 
 int /*<<< orphan*/ * stdout ; 

void FUNC2(void)
{
	FILE *filep;

	if (outf == stderr)
		filep = stdout;
	else
		filep = outf;

	FUNC1(output_buffer, filep);
	FUNC0(filep);

	outp = output_buffer;
}