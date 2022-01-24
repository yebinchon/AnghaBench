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
 scalar_t__ EOF ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  filename ; 
 int /*<<< orphan*/  ofilename ; 
 int /*<<< orphan*/  output ; 
 scalar_t__ overwriting ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ symdepth ; 
 int /*<<< orphan*/  tempname ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zerosyms ; 

__attribute__((used)) static void
FUNC6(void)
{
	if (symdepth && !zerosyms)
		FUNC3("\n");
	if (FUNC2(output) == EOF) {
		FUNC5("couldn't write to %s", ofilename);
		if (overwriting) {
			FUNC4(tempname);
			FUNC0(2, "%s unchanged", filename);
		} else {
			FUNC1(2);
		}
	}
}