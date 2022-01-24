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
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct axg_fifo {int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int CTRL0_TODDR_LSB_POS_MASK ; 
 int FUNC1 (scalar_t__) ; 
 int CTRL0_TODDR_MSB_POS_MASK ; 
 int FUNC2 (unsigned int) ; 
 int CTRL0_TODDR_TYPE_MASK ; 
 int EINVAL ; 
 int /*<<< orphan*/  FIFO_CTRL0 ; 
 scalar_t__ TODDR_MSB_POS ; 
 int FUNC3 (struct snd_pcm_hw_params*) ; 
 unsigned int FUNC4 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct axg_fifo* FUNC6 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream,
				   struct snd_pcm_hw_params *params,
				   struct snd_soc_dai *dai)
{
	struct axg_fifo *fifo = FUNC6(dai);
	unsigned int type, width;

	switch (FUNC3(params)) {
	case 8:
		type = 0; /* 8 samples of 8 bits */
		break;
	case 16:
		type = 2; /* 4 samples of 16 bits - right justified */
		break;
	case 32:
		type = 4; /* 2 samples of 32 bits - right justified */
		break;
	default:
		return -EINVAL;
	}

	width = FUNC4(params);

	FUNC5(fifo->map, FIFO_CTRL0,
			   CTRL0_TODDR_TYPE_MASK |
			   CTRL0_TODDR_MSB_POS_MASK |
			   CTRL0_TODDR_LSB_POS_MASK,
			   FUNC2(type) |
			   FUNC1(TODDR_MSB_POS) |
			   FUNC0(TODDR_MSB_POS - (width - 1)));

	return 0;
}