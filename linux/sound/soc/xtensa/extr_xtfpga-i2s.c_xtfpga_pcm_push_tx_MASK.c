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
struct xtfpga_i2s {unsigned int (* tx_fn ) (struct xtfpga_i2s*,int /*<<< orphan*/ ,unsigned int) ;int /*<<< orphan*/  tx_ptr; int /*<<< orphan*/  tx_substream; } ;
struct snd_pcm_substream {int /*<<< orphan*/  runtime; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 struct snd_pcm_substream* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (struct snd_pcm_substream*) ; 
 unsigned int FUNC6 (struct xtfpga_i2s*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static bool FUNC7(struct xtfpga_i2s *i2s)
{
	struct snd_pcm_substream *tx_substream;
	bool tx_active;

	FUNC3();
	tx_substream = FUNC2(i2s->tx_substream);
	tx_active = tx_substream && FUNC5(tx_substream);
	if (tx_active) {
		unsigned tx_ptr = FUNC0(i2s->tx_ptr);
		unsigned new_tx_ptr = i2s->tx_fn(i2s, tx_substream->runtime,
						 tx_ptr);

		FUNC1(&i2s->tx_ptr, tx_ptr, new_tx_ptr);
	}
	FUNC4();

	return tx_active;
}