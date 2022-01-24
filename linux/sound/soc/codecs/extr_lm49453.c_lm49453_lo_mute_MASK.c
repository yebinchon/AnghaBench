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
struct snd_soc_dai {int /*<<< orphan*/  component; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  LM49453_P0_DAC_DSP_REG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dai *dai, int mute)
{
	FUNC1(dai->component, LM49453_P0_DAC_DSP_REG, FUNC0(3)|FUNC0(2),
			    (mute ? (FUNC0(3)|FUNC0(2)) : 0));
	return 0;
}