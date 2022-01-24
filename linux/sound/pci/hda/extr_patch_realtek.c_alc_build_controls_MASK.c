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
struct hda_codec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDA_FIXUP_ACT_BUILD ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hda_codec*) ; 

__attribute__((used)) static int FUNC2(struct hda_codec *codec)
{
	int err;

	err = FUNC1(codec);
	if (err < 0)
		return err;

	FUNC0(codec, HDA_FIXUP_ACT_BUILD);
	return 0;
}