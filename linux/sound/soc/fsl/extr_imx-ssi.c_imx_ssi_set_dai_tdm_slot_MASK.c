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
typedef  unsigned int u32 ;
struct snd_soc_dai {int dummy; } ;
struct imx_ssi {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ SSI_SRCCR ; 
 scalar_t__ SSI_SRMSK ; 
 scalar_t__ SSI_STCCR ; 
 unsigned int FUNC0 (int) ; 
 unsigned int SSI_STCCR_DC_MASK ; 
 scalar_t__ SSI_STMSK ; 
 unsigned int FUNC1 (scalar_t__) ; 
 struct imx_ssi* FUNC2 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_dai *cpu_dai,
	unsigned int tx_mask, unsigned int rx_mask, int slots, int slot_width)
{
	struct imx_ssi *ssi = FUNC2(cpu_dai);
	u32 sccr;

	sccr = FUNC1(ssi->base + SSI_STCCR);
	sccr &= ~SSI_STCCR_DC_MASK;
	sccr |= FUNC0(slots - 1);
	FUNC3(sccr, ssi->base + SSI_STCCR);

	sccr = FUNC1(ssi->base + SSI_SRCCR);
	sccr &= ~SSI_STCCR_DC_MASK;
	sccr |= FUNC0(slots - 1);
	FUNC3(sccr, ssi->base + SSI_SRCCR);

	FUNC3(~tx_mask, ssi->base + SSI_STMSK);
	FUNC3(~rx_mask, ssi->base + SSI_SRMSK);

	return 0;
}