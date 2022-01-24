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
struct snd_pcm_substream {int /*<<< orphan*/  runtime; } ;
struct dw_i2s_dev {unsigned int (* tx_fn ) (struct dw_i2s_dev*,int /*<<< orphan*/ ,unsigned int,int*) ;unsigned int (* rx_fn ) (struct dw_i2s_dev*,int /*<<< orphan*/ ,unsigned int,int*) ;int /*<<< orphan*/  rx_ptr; int /*<<< orphan*/  tx_ptr; int /*<<< orphan*/  rx_substream; int /*<<< orphan*/  tx_substream; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 struct snd_pcm_substream* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct snd_pcm_substream*) ; 
 scalar_t__ FUNC6 (struct snd_pcm_substream*) ; 
 unsigned int FUNC7 (struct dw_i2s_dev*,int /*<<< orphan*/ ,unsigned int,int*) ; 
 unsigned int FUNC8 (struct dw_i2s_dev*,int /*<<< orphan*/ ,unsigned int,int*) ; 

__attribute__((used)) static void FUNC9(struct dw_i2s_dev *dev, bool push)
{
	struct snd_pcm_substream *substream;
	bool active, period_elapsed;

	FUNC3();
	if (push)
		substream = FUNC2(dev->tx_substream);
	else
		substream = FUNC2(dev->rx_substream);
	active = substream && FUNC6(substream);
	if (active) {
		unsigned int ptr;
		unsigned int new_ptr;

		if (push) {
			ptr = FUNC0(dev->tx_ptr);
			new_ptr = dev->tx_fn(dev, substream->runtime, ptr,
					&period_elapsed);
			FUNC1(&dev->tx_ptr, ptr, new_ptr);
		} else {
			ptr = FUNC0(dev->rx_ptr);
			new_ptr = dev->rx_fn(dev, substream->runtime, ptr,
					&period_elapsed);
			FUNC1(&dev->rx_ptr, ptr, new_ptr);
		}

		if (period_elapsed)
			FUNC5(substream);
	}
	FUNC4();
}