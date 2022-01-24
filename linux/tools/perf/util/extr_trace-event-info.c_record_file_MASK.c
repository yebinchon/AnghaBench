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
typedef  int /*<<< orphan*/  u64 ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int BUFSIZ ; 
 int EIO ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  output_fd ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,char*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int FUNC8(const char *file, ssize_t hdr_sz)
{
	unsigned long long size = 0;
	char buf[BUFSIZ], *sizep;
	off_t hdr_pos = FUNC2(output_fd, 0, SEEK_CUR);
	int r, fd;
	int err = -EIO;

	fd = FUNC3(file, O_RDONLY);
	if (fd < 0) {
		FUNC4("Can't read '%s'", file);
		return -errno;
	}

	/* put in zeros for file size, then fill true size later */
	if (hdr_sz) {
		if (FUNC7(output_fd, &size, hdr_sz) != hdr_sz)
			goto out;
	}

	do {
		r = FUNC6(fd, buf, BUFSIZ);
		if (r > 0) {
			size += r;
			if (FUNC7(output_fd, buf, r) != r)
				goto out;
		}
	} while (r > 0);

	/* ugh, handle big-endian hdr_size == 4 */
	sizep = (char*)&size;
	if (FUNC0())
		sizep += sizeof(u64) - hdr_sz;

	if (hdr_sz && FUNC5(output_fd, sizep, hdr_sz, hdr_pos) < 0) {
		FUNC4("writing file size failed\n");
		goto out;
	}

	err = 0;
out:
	FUNC1(fd);
	return err;
}