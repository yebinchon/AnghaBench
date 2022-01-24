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
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(const char *from_filename,
				     const char *to_filename)
{
	int from, to, err = -1;

	from = FUNC2(from_filename, O_RDONLY);
	if (from < 0)
		return -1;

	to = FUNC2(to_filename, O_RDONLY);
	if (to < 0)
		goto out_close_from;

	err = FUNC1(from, to);

	FUNC0(to);
out_close_from:
	FUNC0(from);
	return err;
}