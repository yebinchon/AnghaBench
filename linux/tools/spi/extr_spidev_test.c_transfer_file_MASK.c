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
typedef  int /*<<< orphan*/  uint8_t ;
struct stat {scalar_t__ st_size; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC6 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC8(int fd, char *filename)
{
	ssize_t bytes;
	struct stat sb;
	int tx_fd;
	uint8_t *tx;
	uint8_t *rx;

	if (FUNC6(filename, &sb) == -1)
		FUNC4("can't stat input file");

	tx_fd = FUNC3(filename, O_RDONLY);
	if (tx_fd < 0)
		FUNC4("can't open input file");

	tx = FUNC2(sb.st_size);
	if (!tx)
		FUNC4("can't allocate tx buffer");

	rx = FUNC2(sb.st_size);
	if (!rx)
		FUNC4("can't allocate rx buffer");

	bytes = FUNC5(tx_fd, tx, sb.st_size);
	if (bytes != sb.st_size)
		FUNC4("failed to read input file");

	FUNC7(fd, tx, rx, sb.st_size);
	FUNC1(rx);
	FUNC1(tx);
	FUNC0(tx_fd);
}