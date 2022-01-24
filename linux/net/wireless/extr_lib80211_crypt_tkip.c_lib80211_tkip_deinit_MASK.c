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
struct lib80211_tkip_data {int /*<<< orphan*/  rx_tfm_michael; int /*<<< orphan*/  tx_tfm_michael; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

__attribute__((used)) static void FUNC2(void *priv)
{
	struct lib80211_tkip_data *_priv = priv;
	if (_priv) {
		FUNC0(_priv->tx_tfm_michael);
		FUNC0(_priv->rx_tfm_michael);
	}
	FUNC1(priv);
}