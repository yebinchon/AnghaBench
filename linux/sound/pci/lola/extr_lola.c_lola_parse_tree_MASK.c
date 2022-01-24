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
struct lola {unsigned int lola_caps; int cold_reset; scalar_t__ granularity; TYPE_2__* card; TYPE_1__* pin; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {scalar_t__ num_pins; } ;

/* Variables and functions */
 size_t CAPT ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 scalar_t__ LOLA_GRANULARITY_MIN ; 
 int /*<<< orphan*/  LOLA_PAR_FUNCTION_TYPE ; 
 int /*<<< orphan*/  LOLA_PAR_SPECIFIC_CAPS ; 
 int /*<<< orphan*/  LOLA_PAR_VENDOR_ID ; 
 scalar_t__ MAX_AUDIO_INOUT_COUNT ; 
 size_t PLAY ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 (struct lola*) ; 
 int FUNC7 (struct lola*,int) ; 
 int FUNC8 (struct lola*,int) ; 
 int FUNC9 (struct lola*,size_t,int*) ; 
 int FUNC10 (struct lola*,size_t,int*) ; 
 int FUNC11 (struct lola*,int,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC12 (struct lola*) ; 
 int /*<<< orphan*/  FUNC13 (struct lola*,scalar_t__,int) ; 

__attribute__((used)) static int FUNC14(struct lola *chip)
{
	unsigned int val;
	int nid, err;

	err = FUNC11(chip, 0, LOLA_PAR_VENDOR_ID, &val);
	if (err < 0) {
		FUNC5(chip->card->dev, "Can't read VENDOR_ID\n");
		return err;
	}
	val >>= 16;
	if (val != 0x1369) {
		FUNC5(chip->card->dev, "Unknown codec vendor 0x%x\n", val);
		return -EINVAL;
	}

	err = FUNC11(chip, 1, LOLA_PAR_FUNCTION_TYPE, &val);
	if (err < 0) {
		FUNC5(chip->card->dev, "Can't read FUNCTION_TYPE\n");
		return err;
	}
	if (val != 1) {
		FUNC5(chip->card->dev, "Unknown function type %d\n", val);
		return -EINVAL;
	}

	err = FUNC11(chip, 1, LOLA_PAR_SPECIFIC_CAPS, &val);
	if (err < 0) {
		FUNC5(chip->card->dev, "Can't read SPECCAPS\n");
		return err;
	}
	chip->lola_caps = val;
	chip->pin[CAPT].num_pins = FUNC1(chip->lola_caps);
	chip->pin[PLAY].num_pins = FUNC3(chip->lola_caps);
	FUNC4(chip->card->dev, "speccaps=0x%x, pins in=%d, out=%d\n",
		    chip->lola_caps,
		    chip->pin[CAPT].num_pins, chip->pin[PLAY].num_pins);

	if (chip->pin[CAPT].num_pins > MAX_AUDIO_INOUT_COUNT ||
	    chip->pin[PLAY].num_pins > MAX_AUDIO_INOUT_COUNT) {
		FUNC5(chip->card->dev, "Invalid Lola-spec caps 0x%x\n", val);
		return -EINVAL;
	}

	nid = 0x02;
	err = FUNC9(chip, CAPT, &nid);
	if (err < 0)
		return err;
	err = FUNC9(chip, PLAY, &nid);
	if (err < 0)
		return err;

	err = FUNC10(chip, CAPT, &nid);
	if (err < 0)
		return err;
	err = FUNC10(chip, PLAY, &nid);
	if (err < 0)
		return err;

	if (FUNC0(chip->lola_caps)) {
		err = FUNC7(chip, nid);
		if (err < 0)
			return err;
		nid++;
	}
	if (FUNC2(chip->lola_caps)) {
		err = FUNC8(chip, nid);
		if (err < 0)
			return err;
		nid++;
	}

	/* enable unsolicited events of the clock widget */
	err = FUNC6(chip);
	if (err < 0)
		return err;

	/* if last ResetController was not a ColdReset, we don't know
	 * the state of the card; initialize here again
	 */
	if (!chip->cold_reset) {
		FUNC12(chip);
		chip->cold_reset = 1;
	} else {
		/* set the granularity if it is not the default */
		if (chip->granularity != LOLA_GRANULARITY_MIN)
			FUNC13(chip, chip->granularity, true);
	}

	return 0;
}