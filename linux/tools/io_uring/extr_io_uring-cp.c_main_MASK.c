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
struct io_uring {int dummy; } ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int O_CREAT ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  QD ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (struct io_uring*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ infd ; 
 int /*<<< orphan*/  FUNC3 (struct io_uring*) ; 
 scalar_t__ FUNC4 (char*,int,...) ; 
 scalar_t__ outfd ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct io_uring*) ; 

int FUNC8(int argc, char *argv[])
{
	struct io_uring ring;
	off_t insize;
	int ret;

	if (argc < 3) {
		FUNC6("%s: infile outfile\n", argv[0]);
		return 1;
	}

	infd = FUNC4(argv[1], O_RDONLY);
	if (infd < 0) {
		FUNC5("open infile");
		return 1;
	}
	outfd = FUNC4(argv[2], O_WRONLY | O_CREAT | O_TRUNC, 0644);
	if (outfd < 0) {
		FUNC5("open outfile");
		return 1;
	}

	if (FUNC7(QD, &ring))
		return 1;
	if (FUNC2(infd, &insize))
		return 1;

	ret = FUNC1(&ring, insize);

	FUNC0(infd);
	FUNC0(outfd);
	FUNC3(&ring);
	return ret;
}