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
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  tty_stdio ; 

__attribute__((used)) static void FUNC3(char *str, int size, FILE *in)
{
	if (!FUNC0(str, size, in))
		FUNC1(stderr, "\nError in reading or end of file.\n");

	if (!tty_stdio)
		FUNC2("%s", str);
}