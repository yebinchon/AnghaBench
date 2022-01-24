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
struct TYPE_2__ {scalar_t__ mfg; scalar_t__ afg; } ;
struct hda_codec {int /*<<< orphan*/  init_pins; TYPE_1__ core; int /*<<< orphan*/  wcaps; } ;
typedef  scalar_t__ hda_nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hda_codec*) ; 
 int FUNC2 (struct hda_codec*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*) ; 

int FUNC5(struct hda_codec *codec)
{
	hda_nid_t fg;
	int err;

	err = FUNC4(&codec->core);
	if (err < 0)
		return err;

	/* Assume the function group node does not change,
	 * only the widget nodes may change.
	 */
	FUNC0(codec->wcaps);
	fg = codec->core.afg ? codec->core.afg : codec->core.mfg;
	err = FUNC2(codec, fg);
	if (err < 0)
		return err;

	FUNC3(&codec->init_pins);
	err = FUNC1(codec);

	return err;
}