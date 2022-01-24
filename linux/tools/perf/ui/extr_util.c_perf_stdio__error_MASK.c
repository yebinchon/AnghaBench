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
typedef  int /*<<< orphan*/  va_list ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(const char *format, va_list args)
{
	FUNC0(stderr, "Error:\n");
	FUNC1(stderr, format, args);
	return 0;
}