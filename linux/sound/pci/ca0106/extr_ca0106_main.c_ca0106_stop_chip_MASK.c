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
struct snd_ca0106 {scalar_t__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  BASIC_INTERRUPT ; 
 int /*<<< orphan*/  EXTENDED_INT_MASK ; 
 scalar_t__ HCFG ; 
 scalar_t__ INTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ca0106*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct snd_ca0106 *chip)
{
	/* disable interrupts */
	FUNC1(chip, BASIC_INTERRUPT, 0, 0);
	FUNC0(0, chip->port + INTE);
	FUNC1(chip, EXTENDED_INT_MASK, 0, 0);
	FUNC2(1000);
	/* disable audio */
	/* outl(HCFG_LOCKSOUNDCACHE, chip->port + HCFG); */
	FUNC0(0, chip->port + HCFG);
	/* FIXME: We need to stop and DMA transfers here.
	 *        But as I am not sure how yet, we cannot from the dma pages.
	 * So we can fix: snd-malloc: Memory leak?  pages not freed = 8
	 */
}