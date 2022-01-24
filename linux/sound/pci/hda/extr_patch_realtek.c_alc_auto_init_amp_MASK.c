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
struct TYPE_2__ {int /*<<< orphan*/  vendor_id; } ;
struct hda_codec {TYPE_1__ core; } ;

/* Variables and functions */
#define  ALC_INIT_DEFAULT 128 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*) ; 

__attribute__((used)) static void FUNC5(struct hda_codec *codec, int type)
{
	FUNC1(codec, true);
	FUNC4(codec);
	switch (type) {
	case ALC_INIT_DEFAULT:
		switch (codec->core.vendor_id) {
		case 0x10ec0260:
			FUNC3(codec, 0x1a, 7, 0, 0x2010);
			break;
		case 0x10ec0880:
		case 0x10ec0882:
		case 0x10ec0883:
		case 0x10ec0885:
			FUNC2(codec, 7, 0, 0x2030);
			break;
		case 0x10ec0888:
			FUNC0(codec);
			break;
		}
		break;
	}
}