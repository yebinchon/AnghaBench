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
 int FUNC0 (int /*<<< orphan*/ ,int,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC1(struct snd_soc_dai *codec_dai, int pll_id,
		int source, unsigned int freq_in, unsigned int freq_out)
{
	return FUNC0(codec_dai->component, pll_id, freq_in, freq_out);
}