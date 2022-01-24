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
struct snd_efw {int /*<<< orphan*/  rx_stream; int /*<<< orphan*/  tx_stream; int /*<<< orphan*/  domain; } ;

/* Variables and functions */
 int /*<<< orphan*/  SND_EFW_TRANSPORT_MODE_IEC61883 ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_efw*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct snd_efw*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct snd_efw*,int /*<<< orphan*/ ) ; 

int FUNC4(struct snd_efw *efw)
{
	int err;

	err = FUNC2(efw, &efw->tx_stream);
	if (err < 0)
		return err;

	err = FUNC2(efw, &efw->rx_stream);
	if (err < 0) {
		FUNC1(efw, &efw->tx_stream);
		return err;
	}

	err = FUNC0(&efw->domain);
	if (err < 0) {
		FUNC1(efw, &efw->tx_stream);
		FUNC1(efw, &efw->rx_stream);
		return err;
	}

	// set IEC61883 compliant mode (actually not fully compliant...).
	err = FUNC3(efw, SND_EFW_TRANSPORT_MODE_IEC61883);
	if (err < 0) {
		FUNC1(efw, &efw->tx_stream);
		FUNC1(efw, &efw->rx_stream);
	}

	return err;
}