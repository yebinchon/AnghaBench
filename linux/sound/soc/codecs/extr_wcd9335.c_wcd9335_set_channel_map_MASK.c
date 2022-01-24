#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wcd9335_codec {unsigned int num_rx_port; unsigned int num_tx_port; TYPE_2__* tx_chs; TYPE_1__* rx_chs; int /*<<< orphan*/  dev; } ;
struct snd_soc_dai {int /*<<< orphan*/  component; } ;
struct TYPE_4__ {unsigned int ch_num; int /*<<< orphan*/  list; } ;
struct TYPE_3__ {unsigned int ch_num; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int*,unsigned int*) ; 
 struct wcd9335_codec* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dai *dai,
				   unsigned int tx_num, unsigned int *tx_slot,
				   unsigned int rx_num, unsigned int *rx_slot)
{
	struct wcd9335_codec *wcd;
	int i;

	wcd = FUNC2(dai->component);

	if (!tx_slot || !rx_slot) {
		FUNC1(wcd->dev, "Invalid tx_slot=%p, rx_slot=%p\n",
			tx_slot, rx_slot);
		return -EINVAL;
	}

	wcd->num_rx_port = rx_num;
	for (i = 0; i < rx_num; i++) {
		wcd->rx_chs[i].ch_num = rx_slot[i];
		FUNC0(&wcd->rx_chs[i].list);
	}

	wcd->num_tx_port = tx_num;
	for (i = 0; i < tx_num; i++) {
		wcd->tx_chs[i].ch_num = tx_slot[i];
		FUNC0(&wcd->tx_chs[i].list);
	}

	return 0;
}