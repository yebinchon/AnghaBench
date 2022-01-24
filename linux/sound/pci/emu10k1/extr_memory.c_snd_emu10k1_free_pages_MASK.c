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
struct snd_util_memblk {int dummy; } ;
struct snd_emu10k1 {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct snd_emu10k1*,struct snd_util_memblk*) ; 

int FUNC2(struct snd_emu10k1 *emu, struct snd_util_memblk *blk)
{
	if (FUNC0(!emu || !blk))
		return -EINVAL;
	return FUNC1(emu, blk);
}