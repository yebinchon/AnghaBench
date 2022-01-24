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
struct snd_ca0106 {unsigned int capture_source; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAPTURE_SOURCE ; 
 int FUNC0 (struct snd_ca0106*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ca0106*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct snd_ca0106 *emu)
{
	unsigned int val = emu->capture_source;
	unsigned int source, mask;
	source = (val << 28) | (val << 24) | (val << 20) | (val << 16);
	mask = FUNC0(emu, CAPTURE_SOURCE, 0) & 0xffff;
	FUNC1(emu, CAPTURE_SOURCE, 0, source | mask);
}