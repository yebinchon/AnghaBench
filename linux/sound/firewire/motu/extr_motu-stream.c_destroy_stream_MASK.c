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
struct amdtp_stream {int dummy; } ;
struct snd_motu {int /*<<< orphan*/  rx_resources; int /*<<< orphan*/  tx_resources; struct amdtp_stream tx_stream; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amdtp_stream*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct snd_motu *motu, struct amdtp_stream *s)
{
	FUNC0(s);

	if (s == &motu->tx_stream)
		FUNC1(&motu->tx_resources);
	else
		FUNC1(&motu->rx_resources);
}