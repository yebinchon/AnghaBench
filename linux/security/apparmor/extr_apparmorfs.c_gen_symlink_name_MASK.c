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
 int /*<<< orphan*/  ENAMETOOLONG ; 
 int /*<<< orphan*/  ENOMEM ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static char *FUNC6(int depth, const char *dirname, const char *fname)
{
	char *buffer, *s;
	int error;
	int size = depth * 6 + FUNC5(dirname) + FUNC5(fname) + 11;

	s = buffer = FUNC2(size, GFP_KERNEL);
	if (!buffer)
		return FUNC0(-ENOMEM);

	for (; depth > 0; depth--) {
		FUNC4(s, "../../");
		s += 6;
		size -= 6;
	}

	error = FUNC3(s, size, "raw_data/%s/%s", dirname, fname);
	if (error >= size || error < 0) {
		FUNC1(buffer);
		return FUNC0(-ENAMETOOLONG);
	}

	return buffer;
}