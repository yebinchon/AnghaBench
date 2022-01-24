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
 char const* PERF_COLOR_RESET ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 int perf_use_color_default ; 
 scalar_t__ FUNC2 (char*,size_t,char*,char const*) ; 
 scalar_t__ FUNC3 (char*,size_t,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(char *bf, size_t size, const char *color,
			     const char *fmt, va_list args, const char *trail)
{
	int r = 0;

	/*
	 * Auto-detect:
	 */
	if (perf_use_color_default < 0) {
		if (FUNC0(1) || FUNC1())
			perf_use_color_default = 1;
		else
			perf_use_color_default = 0;
	}

	if (perf_use_color_default && *color)
		r += FUNC2(bf, size, "%s", color);
	r += FUNC3(bf + r, size - r, fmt, args);
	if (perf_use_color_default && *color)
		r += FUNC2(bf + r, size - r, "%s", PERF_COLOR_RESET);
	if (trail)
		r += FUNC2(bf + r, size - r, "%s", trail);
	return r;
}