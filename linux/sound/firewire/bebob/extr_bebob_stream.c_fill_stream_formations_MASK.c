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
typedef  int /*<<< orphan*/  u8 ;
struct snd_bebob_stream_formation {int dummy; } ;
struct snd_bebob {TYPE_1__* unit; struct snd_bebob_stream_formation* tx_stream_formations; struct snd_bebob_stream_formation* rx_stream_formations; } ;
typedef  enum avc_bridgeco_plug_dir { ____Placeholder_avc_bridgeco_plug_dir } avc_bridgeco_plug_dir ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int AVC_BRIDGECO_ADDR_BYTES ; 
 int AVC_BRIDGECO_PLUG_DIR_IN ; 
 int /*<<< orphan*/  AVC_BRIDGECO_PLUG_UNIT_ISOC ; 
 int EINVAL ; 
 int ENOMEM ; 
 unsigned int FORMAT_MAXIMUM_LENGTH ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int SND_BEBOB_STRM_FMT_ENTRIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,unsigned short) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,unsigned int,char*,unsigned short,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,unsigned int,struct snd_bebob_stream_formation*) ; 

__attribute__((used)) static int
FUNC6(struct snd_bebob *bebob, enum avc_bridgeco_plug_dir dir,
		       unsigned short pid)
{
	u8 *buf;
	struct snd_bebob_stream_formation *formations;
	unsigned int len, eid;
	u8 addr[AVC_BRIDGECO_ADDR_BYTES];
	int err;

	buf = FUNC4(FORMAT_MAXIMUM_LENGTH, GFP_KERNEL);
	if (buf == NULL)
		return -ENOMEM;

	if (dir == AVC_BRIDGECO_PLUG_DIR_IN)
		formations = bebob->rx_stream_formations;
	else
		formations = bebob->tx_stream_formations;

	for (eid = 0; eid < SND_BEBOB_STRM_FMT_ENTRIES; eid++) {
		len = FORMAT_MAXIMUM_LENGTH;
		FUNC0(addr, dir,
					    AVC_BRIDGECO_PLUG_UNIT_ISOC, pid);
		err = FUNC1(bebob->unit, addr, buf,
						     &len, eid);
		/* No entries remained. */
		if (err == -EINVAL && eid > 0) {
			err = 0;
			break;
		} else if (err < 0) {
			FUNC2(&bebob->unit->device,
			"fail to get stream format %d for isoc %s plug %d:%d\n",
				eid,
				(dir == AVC_BRIDGECO_PLUG_DIR_IN) ? "in" :
								    "out",
				pid, err);
			break;
		}

		err = FUNC5(buf, len, formations);
		if (err < 0)
			break;
	}

	FUNC3(buf);
	return err;
}