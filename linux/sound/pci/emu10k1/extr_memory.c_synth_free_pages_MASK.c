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
struct snd_emu10k1_memblk {int dummy; } ;
struct snd_emu10k1 {int /*<<< orphan*/  memhdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_emu10k1*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct snd_emu10k1_memblk*,int*,int*) ; 

__attribute__((used)) static int FUNC2(struct snd_emu10k1 *emu, struct snd_emu10k1_memblk *blk)
{
	int first_page, last_page;

	FUNC1(emu->memhdr, blk, &first_page, &last_page);
	FUNC0(emu, first_page, last_page);
	return 0;
}