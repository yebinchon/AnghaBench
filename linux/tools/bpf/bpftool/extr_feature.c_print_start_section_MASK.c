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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 

__attribute__((used)) static void
FUNC3(const char *json_title, const char *plain_title,
		    const char *define_comment, const char *define_prefix)
{
	if (json_output) {
		FUNC0(json_wtr, json_title);
		FUNC1(json_wtr);
	} else if (define_prefix) {
		FUNC2("%s\n", define_comment);
	} else {
		FUNC2("%s\n", plain_title);
	}
}