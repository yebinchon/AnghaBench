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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  exitstat ; 
 scalar_t__ incomment ; 
 int /*<<< orphan*/  ofilename ; 
 scalar_t__ overwriting ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tempname ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7(void)
{
	if (incomment)
		FUNC1("EOF in comment");
	FUNC0();
	if (overwriting && FUNC4(tempname, ofilename) == -1) {
		FUNC6("couldn't rename temporary file");
		FUNC5(tempname);
		FUNC2(2, "%s unchanged", ofilename);
	}
	FUNC3(exitstat);
}