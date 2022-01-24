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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 size_t FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC5 (char*,char*,size_t) ; 

__attribute__((used)) static void FUNC6(int fd, char *str)
{
	size_t size = FUNC3(str);
	uint8_t *tx;
	uint8_t *rx;

	tx = FUNC1(size);
	if (!tx)
		FUNC2("can't allocate tx buffer");

	rx = FUNC1(size);
	if (!rx)
		FUNC2("can't allocate rx buffer");

	size = FUNC5((char *)tx, str, size);
	FUNC4(fd, tx, rx, size);
	FUNC0(rx);
	FUNC0(tx);
}