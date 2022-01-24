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
struct stat {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 

__attribute__((used)) static int FUNC3(char *pathname)
{
#if !defined(_GNU_EFI) && !defined(_EDK2_EFI)
	struct stat stat_info;
	int in_char;

	if (!FUNC2(pathname, &stat_info)) {
		FUNC1(stderr,
			"Target path already exists, overwrite? [y|n] ");

		in_char = FUNC0(stdin);
		if (in_char == '\n') {
			in_char = FUNC0(stdin);
		}

		if (in_char != 'y' && in_char != 'Y') {
			return (-1);
		}
	}
#endif

	return (0);
}