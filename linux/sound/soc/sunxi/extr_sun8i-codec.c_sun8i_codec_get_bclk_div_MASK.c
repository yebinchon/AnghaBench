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
typedef  unsigned int u8 ;
struct sun8i_codec_clk_div {unsigned int val; scalar_t__ div; } ;
struct sun8i_codec {int /*<<< orphan*/  clk_module; } ;

/* Variables and functions */
 int FUNC0 (struct sun8i_codec_clk_div*) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 struct sun8i_codec_clk_div* sun8i_codec_bclk_div ; 

__attribute__((used)) static u8 FUNC3(struct sun8i_codec *scodec,
				   unsigned int rate,
				   unsigned int word_size)
{
	unsigned long clk_rate = FUNC2(scodec->clk_module);
	unsigned int div = clk_rate / rate / word_size / 2;
	unsigned int best_val = 0, best_diff = ~0;
	int i;

	for (i = 0; i < FUNC0(sun8i_codec_bclk_div); i++) {
		const struct sun8i_codec_clk_div *bdiv = &sun8i_codec_bclk_div[i];
		unsigned int diff = FUNC1(bdiv->div - div);

		if (diff < best_diff) {
			best_diff = diff;
			best_val = bdiv->val;
		}
	}

	return best_val;
}