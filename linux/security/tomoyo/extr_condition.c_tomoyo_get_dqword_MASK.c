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
struct tomoyo_path_info {int dummy; } ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct tomoyo_path_info const* FUNC2 (char*) ; 

__attribute__((used)) static const struct tomoyo_path_info *FUNC3(char *start)
{
	char *cp = start + FUNC0(start) - 1;

	if (cp == start || *start++ != '"' || *cp != '"')
		return NULL;
	*cp = '\0';
	if (*start && !FUNC1(start))
		return NULL;
	return FUNC2(start);
}