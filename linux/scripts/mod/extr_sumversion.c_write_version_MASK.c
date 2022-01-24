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
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (int,unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,unsigned long,...) ; 
 scalar_t__ FUNC6 (int,char const*,scalar_t__) ; 

__attribute__((used)) static void FUNC7(const char *filename, const char *sum,
			  unsigned long offset)
{
	int fd;

	fd = FUNC2(filename, O_RDWR);
	if (fd < 0) {
		FUNC5("changing sum in %s failed: %s\n",
			filename, FUNC3(errno));
		return;
	}

	if (FUNC1(fd, offset, SEEK_SET) == (off_t)-1) {
		FUNC5("changing sum in %s:%lu failed: %s\n",
			filename, offset, FUNC3(errno));
		goto out;
	}

	if (FUNC6(fd, sum, FUNC4(sum)+1) != FUNC4(sum)+1) {
		FUNC5("writing sum in %s failed: %s\n",
			filename, FUNC3(errno));
		goto out;
	}
out:
	FUNC0(fd);
}