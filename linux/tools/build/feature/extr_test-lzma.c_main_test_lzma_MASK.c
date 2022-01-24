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
typedef  int /*<<< orphan*/  lzma_stream ;

/* Variables and functions */
 int /*<<< orphan*/  LZMA_CONCATENATED ; 
 int /*<<< orphan*/  LZMA_STREAM_INIT ; 
 int /*<<< orphan*/  UINT64_MAX ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC1(void)
{
	lzma_stream strm = LZMA_STREAM_INIT;
	int ret;

	ret = FUNC0(&strm, UINT64_MAX, LZMA_CONCATENATED);
	return ret ? -1 : 0;
}