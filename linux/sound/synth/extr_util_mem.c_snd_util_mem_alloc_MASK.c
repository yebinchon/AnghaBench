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
struct snd_util_memhdr {int /*<<< orphan*/  block_mutex; } ;
struct snd_util_memblk {int dummy; } ;

/* Variables and functions */
 struct snd_util_memblk* FUNC0 (struct snd_util_memhdr*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct snd_util_memblk *
FUNC3(struct snd_util_memhdr *hdr, int size)
{
	struct snd_util_memblk *blk;
	FUNC1(&hdr->block_mutex);
	blk = FUNC0(hdr, size);
	FUNC2(&hdr->block_mutex);
	return blk;
}