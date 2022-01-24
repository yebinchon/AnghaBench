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

/* Variables and functions */
 int SPI_LOOP ; 
 int _read_count ; 
 int _write_count ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int mode ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC9(int fd, int len)
{
	uint8_t *tx;
	uint8_t *rx;
	int i;

	tx = FUNC4(len);
	if (!tx)
		FUNC6("can't allocate tx buffer");
	for (i = 0; i < len; i++)
		tx[i] = FUNC7();

	rx = FUNC4(len);
	if (!rx)
		FUNC6("can't allocate rx buffer");

	FUNC8(fd, tx, rx, len);

	_write_count += len;
	_read_count += len;

	if (mode & SPI_LOOP) {
		if (FUNC5(tx, rx, len)) {
			FUNC1(stderr, "transfer error !\n");
			FUNC3(tx, len, 32, "TX");
			FUNC3(rx, len, 32, "RX");
			FUNC0(1);
		}
	}

	FUNC2(rx);
	FUNC2(tx);
}