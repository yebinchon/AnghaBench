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
struct sst_dsp {int dummy; } ;
typedef  int dma_addr_t ;

/* Variables and functions */
 int SST_HSW_MASK_DMA_ADDR_DSP ; 
 int FUNC0 (struct sst_dsp*,int,int,size_t) ; 

int FUNC1(struct sst_dsp *sst, dma_addr_t dest_addr,
	dma_addr_t src_addr, size_t size)
{
	return FUNC0(sst, dest_addr | SST_HSW_MASK_DMA_ADDR_DSP,
			src_addr, size);
}