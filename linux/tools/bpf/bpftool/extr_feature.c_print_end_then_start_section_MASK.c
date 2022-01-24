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
 scalar_t__ json_output ; 
 int /*<<< orphan*/  json_wtr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(const char *json_title, const char *plain_title,
			     const char *define_comment,
			     const char *define_prefix)
{
	if (json_output)
		FUNC0(json_wtr);
	else
		FUNC2("\n");

	FUNC1(json_title, plain_title, define_comment,
			    define_prefix);
}