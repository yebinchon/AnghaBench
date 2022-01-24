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
struct snd_gus_card {int /*<<< orphan*/  reg_lock; scalar_t__ interwave; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRAM ; 
 int EAGAIN ; 
 int /*<<< orphan*/  GF1DATALOW ; 
 int /*<<< orphan*/  GF1REGSEL ; 
 int /*<<< orphan*/  FUNC0 (struct snd_gus_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SNDRV_GF1_GB_MEMORY_CONTROL ; 
 int /*<<< orphan*/  SNDRV_GF1_GW_DRAM_IO16 ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_gus_card*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_gus_card*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_gus_card*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC12(struct snd_gus_card *gus, unsigned char *buf,
				  unsigned int pos, unsigned int count,
				  int w16, int invert)
{
	unsigned int len;
	unsigned long flags;

	/*
	printk(KERN_DEBUG
	       "poke block; buf = 0x%x, pos = %i, count = %i, port = 0x%x\n",
	       (int)buf, pos, count, gus->gf1.port);
	*/
	while (count > 0) {
		len = count;
		if (len > 512)		/* limit, to allow IRQ */
			len = 512;
		count -= len;
		if (gus->interwave) {
			FUNC10(&gus->reg_lock, flags);
			FUNC9(gus, SNDRV_GF1_GB_MEMORY_CONTROL, 0x01 | (invert ? 0x08 : 0x00));
			FUNC7(gus, pos);
			if (w16) {
				FUNC2(SNDRV_GF1_GW_DRAM_IO16, FUNC0(gus, GF1REGSEL));
				FUNC4(FUNC0(gus, GF1DATALOW), buf, len >> 1);
			} else {
				FUNC3(FUNC0(gus, DRAM), buf, len);
			}
			FUNC11(&gus->reg_lock, flags);
			buf += 512;
			pos += 512;
		} else {
			invert = invert ? 0x80 : 0x00;
			if (w16) {
				len >>= 1;
				while (len--) {
					FUNC8(gus, pos++, *buf++);
					FUNC8(gus, pos++, *buf++ ^ invert);
				}
			} else {
				while (len--)
					FUNC8(gus, pos++, *buf++ ^ invert);
			}
		}
		if (count > 0 && !FUNC1()) {
			FUNC5(1);
			if (FUNC6(current))
				return -EAGAIN;
		}
	}
	return 0;
}