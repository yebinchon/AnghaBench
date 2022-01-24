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
struct snd_info_entry {struct lola* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct lola {int /*<<< orphan*/  lola_caps; TYPE_2__* pin; TYPE_1__* pcm; } ;
struct TYPE_4__ {int num_pins; } ;
struct TYPE_3__ {int num_streams; } ;

/* Variables and functions */
 size_t CAPT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOLA_PAR_AMP_IN_CAP ; 
 int /*<<< orphan*/  LOLA_PAR_AMP_OUT_CAP ; 
 int /*<<< orphan*/  LOLA_PAR_FUNCTION_TYPE ; 
 int /*<<< orphan*/  LOLA_PAR_SPECIFIC_CAPS ; 
 int /*<<< orphan*/  LOLA_PAR_VENDOR_ID ; 
 size_t PLAY ; 
 int /*<<< orphan*/  FUNC2 (struct lola*,int,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_info_buffer*,struct lola*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_info_buffer*,struct lola*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_info_buffer*,struct lola*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_info_buffer*,struct lola*,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_info_buffer*,char*,int,...) ; 

__attribute__((used)) static void FUNC8(struct snd_info_entry *entry,
				 struct snd_info_buffer *buffer)
{
	struct lola *chip = entry->private_data;
	unsigned int val;
	int i, nid;

	FUNC2(chip, 0, LOLA_PAR_VENDOR_ID, &val);
	FUNC7(buffer, "Vendor: 0x%08x\n", val);
	FUNC2(chip, 1, LOLA_PAR_FUNCTION_TYPE, &val);
	FUNC7(buffer, "Function Type: %d\n", val);
	FUNC2(chip, 1, LOLA_PAR_SPECIFIC_CAPS, &val);
	FUNC7(buffer, "Specific-Caps: 0x%08x\n", val);
	FUNC7(buffer, "  Pins-In %d, Pins-Out %d\n",
		    chip->pin[CAPT].num_pins, chip->pin[PLAY].num_pins);
	nid = 2;
	for (i = 0; i < chip->pcm[CAPT].num_streams; i++, nid++)
		FUNC3(buffer, chip, nid, "[Audio-In]");
	for (i = 0; i < chip->pcm[PLAY].num_streams; i++, nid++)
		FUNC3(buffer, chip, nid, "[Audio-Out]");
	for (i = 0; i < chip->pin[CAPT].num_pins; i++, nid++)
		FUNC6(buffer, chip, nid, LOLA_PAR_AMP_IN_CAP,
				 "[Pin-In]");
	for (i = 0; i < chip->pin[PLAY].num_pins; i++, nid++)
		FUNC6(buffer, chip, nid, LOLA_PAR_AMP_OUT_CAP,
				 "[Pin-Out]");
	if (FUNC0(chip->lola_caps)) {
		FUNC4(buffer, chip, nid);
		nid++;
	}
	if (FUNC1(chip->lola_caps)) {
		FUNC5(buffer, chip, nid);
		nid++;
	}
}