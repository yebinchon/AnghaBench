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
 int /*<<< orphan*/  FUNC0 (char*) ; 

void FUNC1(void)
{
	FUNC0 ("Usage: dump_psb [options]\n");
	FUNC0 ("Options:\n");
	FUNC0 ("  -n, --numpst     Set number of PST tables to scan\n");
	FUNC0 ("  -r, --relevant   Only display PSTs relevant to cpuid N\n");
}