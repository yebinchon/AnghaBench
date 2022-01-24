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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INPUT_DEVICE_ID_ABS_MAX ; 
 int /*<<< orphan*/  INPUT_DEVICE_ID_EV_MAX ; 
 int /*<<< orphan*/  INPUT_DEVICE_ID_FF_MAX ; 
 int /*<<< orphan*/  INPUT_DEVICE_ID_KEY_MAX ; 
 int /*<<< orphan*/  INPUT_DEVICE_ID_KEY_MIN_INTERESTING ; 
 int /*<<< orphan*/  INPUT_DEVICE_ID_LED_MAX ; 
 int INPUT_DEVICE_ID_MATCH_ABSBIT ; 
 int INPUT_DEVICE_ID_MATCH_BUS ; 
 int INPUT_DEVICE_ID_MATCH_EVBIT ; 
 int INPUT_DEVICE_ID_MATCH_FFBIT ; 
 int INPUT_DEVICE_ID_MATCH_KEYBIT ; 
 int INPUT_DEVICE_ID_MATCH_LEDBIT ; 
 int INPUT_DEVICE_ID_MATCH_MSCIT ; 
 int INPUT_DEVICE_ID_MATCH_PRODUCT ; 
 int INPUT_DEVICE_ID_MATCH_RELBIT ; 
 int INPUT_DEVICE_ID_MATCH_SNDBIT ; 
 int INPUT_DEVICE_ID_MATCH_SWBIT ; 
 int INPUT_DEVICE_ID_MATCH_VENDOR ; 
 int INPUT_DEVICE_ID_MATCH_VERSION ; 
 int /*<<< orphan*/  INPUT_DEVICE_ID_MSC_MAX ; 
 int /*<<< orphan*/  INPUT_DEVICE_ID_REL_MAX ; 
 int /*<<< orphan*/  INPUT_DEVICE_ID_SND_MAX ; 
 int /*<<< orphan*/  INPUT_DEVICE_ID_SW_MAX ; 
 int /*<<< orphan*/ * absbit ; 
 int bustype ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * evbit ; 
 int /*<<< orphan*/ * ffbit ; 
 int flags ; 
 int /*<<< orphan*/  input_device_id ; 
 int /*<<< orphan*/ * keybit ; 
 int /*<<< orphan*/ * ledbit ; 
 int /*<<< orphan*/ * mscbit ; 
 int product ; 
 int /*<<< orphan*/ * relbit ; 
 int /*<<< orphan*/ * sndbit ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/ * swbit ; 
 int vendor ; 
 int version ; 

__attribute__((used)) static int FUNC6(const char *filename, void *symval,
			  char *alias)
{
	FUNC1(symval, input_device_id, flags);
	FUNC1(symval, input_device_id, bustype);
	FUNC1(symval, input_device_id, vendor);
	FUNC1(symval, input_device_id, product);
	FUNC1(symval, input_device_id, version);
	FUNC2(symval, input_device_id, evbit);
	FUNC2(symval, input_device_id, keybit);
	FUNC2(symval, input_device_id, relbit);
	FUNC2(symval, input_device_id, absbit);
	FUNC2(symval, input_device_id, mscbit);
	FUNC2(symval, input_device_id, ledbit);
	FUNC2(symval, input_device_id, sndbit);
	FUNC2(symval, input_device_id, ffbit);
	FUNC2(symval, input_device_id, swbit);

	FUNC4(alias, "input:");

	FUNC0(alias, "b", flags & INPUT_DEVICE_ID_MATCH_BUS, bustype);
	FUNC0(alias, "v", flags & INPUT_DEVICE_ID_MATCH_VENDOR, vendor);
	FUNC0(alias, "p", flags & INPUT_DEVICE_ID_MATCH_PRODUCT, product);
	FUNC0(alias, "e", flags & INPUT_DEVICE_ID_MATCH_VERSION, version);

	FUNC4(alias + FUNC5(alias), "-e*");
	if (flags & INPUT_DEVICE_ID_MATCH_EVBIT)
		FUNC3(alias, *evbit, 0, INPUT_DEVICE_ID_EV_MAX);
	FUNC4(alias + FUNC5(alias), "k*");
	if (flags & INPUT_DEVICE_ID_MATCH_KEYBIT)
		FUNC3(alias, *keybit,
			 INPUT_DEVICE_ID_KEY_MIN_INTERESTING,
			 INPUT_DEVICE_ID_KEY_MAX);
	FUNC4(alias + FUNC5(alias), "r*");
	if (flags & INPUT_DEVICE_ID_MATCH_RELBIT)
		FUNC3(alias, *relbit, 0, INPUT_DEVICE_ID_REL_MAX);
	FUNC4(alias + FUNC5(alias), "a*");
	if (flags & INPUT_DEVICE_ID_MATCH_ABSBIT)
		FUNC3(alias, *absbit, 0, INPUT_DEVICE_ID_ABS_MAX);
	FUNC4(alias + FUNC5(alias), "m*");
	if (flags & INPUT_DEVICE_ID_MATCH_MSCIT)
		FUNC3(alias, *mscbit, 0, INPUT_DEVICE_ID_MSC_MAX);
	FUNC4(alias + FUNC5(alias), "l*");
	if (flags & INPUT_DEVICE_ID_MATCH_LEDBIT)
		FUNC3(alias, *ledbit, 0, INPUT_DEVICE_ID_LED_MAX);
	FUNC4(alias + FUNC5(alias), "s*");
	if (flags & INPUT_DEVICE_ID_MATCH_SNDBIT)
		FUNC3(alias, *sndbit, 0, INPUT_DEVICE_ID_SND_MAX);
	FUNC4(alias + FUNC5(alias), "f*");
	if (flags & INPUT_DEVICE_ID_MATCH_FFBIT)
		FUNC3(alias, *ffbit, 0, INPUT_DEVICE_ID_FF_MAX);
	FUNC4(alias + FUNC5(alias), "w*");
	if (flags & INPUT_DEVICE_ID_MATCH_SWBIT)
		FUNC3(alias, *swbit, 0, INPUT_DEVICE_ID_SW_MAX);
	return 1;
}