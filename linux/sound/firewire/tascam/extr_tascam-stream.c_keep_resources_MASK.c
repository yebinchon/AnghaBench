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
struct fw_iso_resources {int dummy; } ;
struct amdtp_stream {int dummy; } ;
struct snd_tscm {int /*<<< orphan*/  unit; struct fw_iso_resources rx_resources; struct fw_iso_resources tx_resources; struct amdtp_stream tx_stream; } ;
struct TYPE_2__ {int /*<<< orphan*/  max_speed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amdtp_stream*) ; 
 int FUNC1 (struct amdtp_stream*,unsigned int) ; 
 int FUNC2 (struct fw_iso_resources*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_tscm *tscm, unsigned int rate,
			  struct amdtp_stream *stream)
{
	struct fw_iso_resources *resources;
	int err;

	if (stream == &tscm->tx_stream)
		resources = &tscm->tx_resources;
	else
		resources = &tscm->rx_resources;

	err = FUNC1(stream, rate);
	if (err < 0)
		return err;

	return FUNC2(resources,
				FUNC0(stream),
				FUNC3(tscm->unit)->max_speed);
}