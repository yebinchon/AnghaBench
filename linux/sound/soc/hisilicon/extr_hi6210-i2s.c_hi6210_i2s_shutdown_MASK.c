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
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct hi6210_i2s {int clocks; int /*<<< orphan*/  sysctrl; int /*<<< orphan*/ * clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SC_PERIPH_RSTEN1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct hi6210_i2s* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct snd_pcm_substream *substream,
				struct snd_soc_dai *cpu_dai)
{
	struct hi6210_i2s *i2s = FUNC2(cpu_dai->dev);
	int n;

	for (n = 0; n < i2s->clocks; n++)
		FUNC1(i2s->clk[n]);

	FUNC3(i2s->sysctrl, SC_PERIPH_RSTEN1, FUNC0(5));
}