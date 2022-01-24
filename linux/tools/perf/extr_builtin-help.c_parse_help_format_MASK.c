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
typedef  enum help_format { ____Placeholder_help_format } help_format ;

/* Variables and functions */
 int HELP_FORMAT_INFO ; 
 int HELP_FORMAT_MAN ; 
 int HELP_FORMAT_NONE ; 
 int HELP_FORMAT_WEB ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 

__attribute__((used)) static enum help_format FUNC2(const char *format)
{
	if (!FUNC1(format, "man"))
		return HELP_FORMAT_MAN;
	if (!FUNC1(format, "info"))
		return HELP_FORMAT_INFO;
	if (!FUNC1(format, "web") || !FUNC1(format, "html"))
		return HELP_FORMAT_WEB;

	FUNC0("unrecognized help format '%s'", format);
	return HELP_FORMAT_NONE;
}