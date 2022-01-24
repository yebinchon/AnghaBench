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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char const*,char*) ; 
 char* FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(const char *name, int error)
{
	FUNC1("Error %d opening %s: %s\n", error, name, FUNC2(error));
	FUNC0(1);
}