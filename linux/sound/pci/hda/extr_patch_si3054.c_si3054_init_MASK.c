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
typedef  int u16 ;
struct si3054_spec {int international; } ;
struct TYPE_2__ {int /*<<< orphan*/  mfg; } ;
struct hda_codec {TYPE_1__ core; struct si3054_spec* spec; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_NODE_ROOT ; 
 int /*<<< orphan*/  AC_VERB_SET_CODEC_RESET ; 
 int /*<<< orphan*/  AC_VERB_SET_STREAM_FORMAT ; 
 int ENOMEM ; 
 int FUNC0 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int /*<<< orphan*/ ,int) ; 
 int SI3054_ATAG_MASK ; 
 int /*<<< orphan*/  SI3054_CHIPID ; 
 int SI3054_CHIPID_INTERNATIONAL ; 
 int SI3054_DTAG_MASK ; 
 int /*<<< orphan*/  SI3054_EXTENDED_MID ; 
 int /*<<< orphan*/  SI3054_GPIO_CFG ; 
 int /*<<< orphan*/  SI3054_GPIO_POLARITY ; 
 int /*<<< orphan*/  SI3054_LINE_CFG1 ; 
 int /*<<< orphan*/  SI3054_LINE_LEVEL ; 
 int /*<<< orphan*/  SI3054_LINE_RATE ; 
 int /*<<< orphan*/  SI3054_LINE_STATUS ; 
 int SI3054_MEI_READY ; 
 int /*<<< orphan*/  SI3054_MISC_AFE ; 
 int /*<<< orphan*/  SI3054_VERB_WRITE_NODE ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct hda_codec *codec)
{
	struct si3054_spec *spec = codec->spec;
	unsigned wait_count;
	u16 val;

	if (FUNC6(&codec->core,
					    SI3054_VERB_WRITE_NODE))
		return -ENOMEM;

	FUNC5(codec, AC_NODE_ROOT, 0, AC_VERB_SET_CODEC_RESET, 0);
	FUNC5(codec, codec->core.mfg, 0, AC_VERB_SET_STREAM_FORMAT, 0);
	FUNC1(codec, SI3054_LINE_RATE, 9600);
	FUNC1(codec, SI3054_LINE_LEVEL, SI3054_DTAG_MASK|SI3054_ATAG_MASK);
	FUNC1(codec, SI3054_EXTENDED_MID, 0);

	wait_count = 10;
	do {
		FUNC4(2);
		val = FUNC0(codec, SI3054_EXTENDED_MID);
	} while ((val & SI3054_MEI_READY) != SI3054_MEI_READY && wait_count--);

	if((val&SI3054_MEI_READY) != SI3054_MEI_READY) {
		FUNC3(codec, "si3054: cannot initialize. EXT MID = %04x\n", val);
		/* let's pray that this is no fatal error */
		/* return -EACCES; */
	}

	FUNC1(codec, SI3054_GPIO_POLARITY, 0xffff);
	FUNC1(codec, SI3054_GPIO_CFG, 0x0);
	FUNC1(codec, SI3054_MISC_AFE, 0);
	FUNC1(codec, SI3054_LINE_CFG1,0x200);

	if((FUNC0(codec,SI3054_LINE_STATUS) & (1<<6)) == 0) {
		FUNC2(codec,
			  "Link Frame Detect(FDT) is not ready (line status: %04x)\n",
				FUNC0(codec,SI3054_LINE_STATUS));
	}

	spec->international = FUNC0(codec, SI3054_CHIPID) & SI3054_CHIPID_INTERNATIONAL;

	return 0;
}