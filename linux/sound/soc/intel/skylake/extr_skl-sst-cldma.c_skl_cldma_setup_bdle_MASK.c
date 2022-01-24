#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int frags; int bufsize; } ;
struct sst_dsp {TYPE_1__ cl_dev; } ;
struct snd_dma_buffer {scalar_t__ area; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct sst_dsp *ctx,
		struct snd_dma_buffer *dmab_data,
		__le32 **bdlp, int size, int with_ioc)
{
	__le32 *bdl = *bdlp;

	ctx->cl_dev.frags = 0;
	while (size > 0) {
		phys_addr_t addr = FUNC3(dmab_data->area +
				(ctx->cl_dev.frags * ctx->cl_dev.bufsize));

		bdl[0] = FUNC0(FUNC1(addr));
		bdl[1] = FUNC0(FUNC2(addr));

		bdl[2] = FUNC0(ctx->cl_dev.bufsize);

		size -= ctx->cl_dev.bufsize;
		bdl[3] = (size || !with_ioc) ? 0 : FUNC0(0x01);

		bdl += 4;
		ctx->cl_dev.frags++;
	}
}