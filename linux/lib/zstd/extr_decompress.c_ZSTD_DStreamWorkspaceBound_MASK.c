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
typedef  int /*<<< orphan*/  ZSTD_DStream ;

/* Variables and functions */
 size_t FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int WILDCOPY_OVERLENGTH ; 
 size_t FUNC1 (size_t const) ; 
 int /*<<< orphan*/  ZSTD_BLOCKSIZE_ABSOLUTEMAX ; 
 size_t FUNC2 () ; 

size_t FUNC3(size_t maxWindowSize)
{
	size_t const blockSize = FUNC0(maxWindowSize, ZSTD_BLOCKSIZE_ABSOLUTEMAX);
	size_t const inBuffSize = blockSize;
	size_t const outBuffSize = maxWindowSize + blockSize + WILDCOPY_OVERLENGTH * 2;
	return FUNC2() + FUNC1(sizeof(ZSTD_DStream)) + FUNC1(inBuffSize) + FUNC1(outBuffSize);
}