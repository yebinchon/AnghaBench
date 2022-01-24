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
struct snd_m3 {int reset_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSP_PORT_CONTROL_REG_B ; 
 int REGB_ENABLE_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct snd_m3*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct snd_m3 *chip)
{
	FUNC0(chip, chip->reset_state | REGB_ENABLE_RESET, DSP_PORT_CONTROL_REG_B);
}