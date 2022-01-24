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
struct snd_emu10k1 {int /*<<< orphan*/  ctl_attn; int /*<<< orphan*/  ctl_send_volume; int /*<<< orphan*/  ctl_send_routing; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_emu10k1*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC1(struct snd_emu10k1 *emu, int idx, int activate)
{
	FUNC0(emu, emu->ctl_send_routing, idx, activate);
	FUNC0(emu, emu->ctl_send_volume, idx, activate);
	FUNC0(emu, emu->ctl_attn, idx, activate);
}