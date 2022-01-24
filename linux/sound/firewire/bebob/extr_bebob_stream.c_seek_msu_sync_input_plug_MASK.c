#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u8 ;
struct snd_bebob {int sync_input_plug; TYPE_1__* unit; } ;
typedef  enum avc_bridgeco_plug_type { ____Placeholder_avc_bridgeco_plug_type } avc_bridgeco_plug_type ;
struct TYPE_3__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int AVC_BRIDGECO_ADDR_BYTES ; 
 int /*<<< orphan*/  AVC_BRIDGECO_PLUG_DIR_IN ; 
 int AVC_BRIDGECO_PLUG_TYPE_SYNC ; 
 int AVC_PLUG_INFO_BUF_BYTES ; 
 int /*<<< orphan*/  FUNC0 (unsigned int*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC1 (TYPE_1__*,unsigned int*,int*) ; 
 int FUNC2 (TYPE_1__*,int,int,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,unsigned int,...) ; 

__attribute__((used)) static int
FUNC4(struct snd_bebob *bebob)
{
	u8 plugs[AVC_PLUG_INFO_BUF_BYTES], addr[AVC_BRIDGECO_ADDR_BYTES];
	unsigned int i;
	enum avc_bridgeco_plug_type type;
	int err;

	/* Get the number of Music Sub Unit for both direction. */
	err = FUNC2(bebob->unit, 0x0c, 0x00, 0x00, plugs);
	if (err < 0) {
		FUNC3(&bebob->unit->device,
			"fail to get info for MSU in/out plugs: %d\n",
			err);
		goto end;
	}

	/* seek destination plugs for 'MSU sync input' */
	bebob->sync_input_plug = -1;
	for (i = 0; i < plugs[0]; i++) {
		FUNC0(addr, AVC_BRIDGECO_PLUG_DIR_IN, i);
		err = FUNC1(bebob->unit, addr, &type);
		if (err < 0) {
			FUNC3(&bebob->unit->device,
				"fail to get type for MSU in plug %d: %d\n",
				i, err);
			goto end;
		}

		if (type == AVC_BRIDGECO_PLUG_TYPE_SYNC) {
			bebob->sync_input_plug = i;
			break;
		}
	}
end:
	return err;
}