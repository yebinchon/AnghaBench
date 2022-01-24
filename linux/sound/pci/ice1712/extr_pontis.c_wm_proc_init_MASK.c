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
struct snd_ice1712 {int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct snd_ice1712*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wm_proc_regs_read ; 
 int /*<<< orphan*/  wm_proc_regs_write ; 

__attribute__((used)) static void FUNC1(struct snd_ice1712 *ice)
{
	FUNC0(ice->card, "wm_codec", ice, wm_proc_regs_read,
			     wm_proc_regs_write);
}