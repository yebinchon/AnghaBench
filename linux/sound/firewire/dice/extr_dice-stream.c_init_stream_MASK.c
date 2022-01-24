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
struct snd_dice {int /*<<< orphan*/  unit; struct fw_iso_resources* rx_resources; struct amdtp_stream* rx_stream; struct fw_iso_resources* tx_resources; struct amdtp_stream* tx_stream; } ;
struct fw_iso_resources {int channels_mask; } ;
struct amdtp_stream {int dummy; } ;
typedef  enum amdtp_stream_direction { ____Placeholder_amdtp_stream_direction } amdtp_stream_direction ;

/* Variables and functions */
 int AMDTP_IN_STREAM ; 
 int /*<<< orphan*/  CIP_BLOCKING ; 
 int FUNC0 (struct amdtp_stream*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct amdtp_stream*) ; 
 int /*<<< orphan*/  FUNC2 (struct fw_iso_resources*) ; 
 int FUNC3 (struct fw_iso_resources*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_dice *dice, enum amdtp_stream_direction dir,
		       unsigned int index)
{
	struct amdtp_stream *stream;
	struct fw_iso_resources *resources;
	int err;

	if (dir == AMDTP_IN_STREAM) {
		stream = &dice->tx_stream[index];
		resources = &dice->tx_resources[index];
	} else {
		stream = &dice->rx_stream[index];
		resources = &dice->rx_resources[index];
	}

	err = FUNC3(resources, dice->unit);
	if (err < 0)
		goto end;
	resources->channels_mask = 0x00000000ffffffffuLL;

	err = FUNC0(stream, dice->unit, dir, CIP_BLOCKING);
	if (err < 0) {
		FUNC1(stream);
		FUNC2(resources);
	}
end:
	return err;
}