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
struct vx_pipe {int hw_ptr; int buffer_bytes; } ;
struct vx_core {int dummy; } ;
struct snd_vxpocket {int /*<<< orphan*/  regDIALOG; } ;
struct snd_pcm_runtime {scalar_t__ dma_area; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIALOG ; 
 int /*<<< orphan*/  ICR ; 
 int /*<<< orphan*/  VXP_DLG_DMA16_SEL_MASK ; 
 int /*<<< orphan*/  VXP_DLG_DMAREAD_SEL_MASK ; 
 int /*<<< orphan*/  VX_DMA ; 
 void* FUNC0 (long) ; 
 scalar_t__ FUNC1 (int) ; 
 struct snd_vxpocket* FUNC2 (struct vx_core*) ; 
 int /*<<< orphan*/  FUNC3 (struct vx_core*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vx_core*,int /*<<< orphan*/ ) ; 
 long FUNC5 (struct vx_core*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct vx_core *chip, struct snd_pcm_runtime *runtime,
			 struct vx_pipe *pipe, int count)
{
	struct snd_vxpocket *pchip = FUNC2(chip);
	long port = FUNC5(chip, VX_DMA);
	int offset = pipe->hw_ptr;
	unsigned short *addr = (unsigned short *)(runtime->dma_area + offset);

	if (FUNC1(count % 2))
		return;
	FUNC4(chip, 0);
	if (offset + count >= pipe->buffer_bytes) {
		int length = pipe->buffer_bytes - offset;
		count -= length;
		length >>= 1; /* in 16bit words */
		/* Transfer using pseudo-dma. */
		for (; length > 0; length--)
			*addr++ = FUNC0(port);
		addr = (unsigned short *)runtime->dma_area;
		pipe->hw_ptr = 0;
	}
	pipe->hw_ptr += count;
	count >>= 1; /* in 16bit words */
	/* Transfer using pseudo-dma. */
	for (; count > 1; count--)
		*addr++ = FUNC0(port);
	/* Disable DMA */
	pchip->regDIALOG &= ~VXP_DLG_DMAREAD_SEL_MASK;
	FUNC3(chip, DIALOG, pchip->regDIALOG);
	/* Read the last word (16 bits) */
	*addr = FUNC0(port);
	/* Disable 16-bit accesses */
	pchip->regDIALOG &= ~VXP_DLG_DMA16_SEL_MASK;
	FUNC3(chip, DIALOG, pchip->regDIALOG);
	/* HREQ pin disabled. */
	FUNC3(chip, ICR, 0);
}