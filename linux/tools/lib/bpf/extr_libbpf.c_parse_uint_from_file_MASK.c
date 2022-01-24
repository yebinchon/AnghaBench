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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EIO ; 
 int EOF ; 
 int STRERR_BUFSIZE ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(const char *file, const char *fmt)
{
	char buf[STRERR_BUFSIZE];
	int err, ret;
	FILE *f;

	f = FUNC1(file, "r");
	if (!f) {
		err = -errno;
		FUNC4("failed to open '%s': %s\n", file,
			 FUNC3(err, buf, sizeof(buf)));
		return err;
	}
	err = FUNC2(f, fmt, &ret);
	if (err != 1) {
		err = err == EOF ? -EIO : -errno;
		FUNC4("failed to parse '%s': %s\n", file,
			FUNC3(err, buf, sizeof(buf)));
		FUNC0(f);
		return err;
	}
	FUNC0(f);
	return ret;
}