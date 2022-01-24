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
typedef  int u32 ;
typedef  int u16 ;
struct snd_soc_dai {int dummy; } ;
struct i2s_dev_data {int tdm_fmt; scalar_t__ acp3x_base; } ;

/* Variables and functions */
 int EINVAL ; 
 int FRM_LEN ; 
#define  SLOT_WIDTH_16 131 
#define  SLOT_WIDTH_24 130 
#define  SLOT_WIDTH_32 129 
#define  SLOT_WIDTH_8 128 
 scalar_t__ mmACP_BTTDM_IRER ; 
 scalar_t__ mmACP_BTTDM_ITER ; 
 scalar_t__ mmACP_BTTDM_RXFRMT ; 
 scalar_t__ mmACP_BTTDM_TXFRMT ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 struct i2s_dev_data* FUNC2 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dai *cpu_dai, u32 tx_mask,
				  u32 rx_mask, int slots, int slot_width)
{
	u32 val = 0;
	u16 slot_len;

	struct i2s_dev_data *adata = FUNC2(cpu_dai);

	switch (slot_width) {
	case SLOT_WIDTH_8:
		slot_len = 8;
		break;
	case SLOT_WIDTH_16:
		slot_len = 16;
		break;
	case SLOT_WIDTH_24:
		slot_len = 24;
		break;
	case SLOT_WIDTH_32:
		slot_len = 0;
		break;
	default:
		return -EINVAL;
	}

	val = FUNC0(adata->acp3x_base + mmACP_BTTDM_ITER);
	FUNC1((val | 0x2), adata->acp3x_base + mmACP_BTTDM_ITER);
	val = FUNC0(adata->acp3x_base + mmACP_BTTDM_IRER);
	FUNC1((val | 0x2), adata->acp3x_base + mmACP_BTTDM_IRER);

	val = (FRM_LEN | (slots << 15) | (slot_len << 18));
	FUNC1(val, adata->acp3x_base + mmACP_BTTDM_TXFRMT);
	FUNC1(val, adata->acp3x_base + mmACP_BTTDM_RXFRMT);

	adata->tdm_fmt = val;
	return 0;
}