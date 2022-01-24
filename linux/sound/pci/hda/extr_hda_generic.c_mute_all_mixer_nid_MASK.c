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
typedef  int /*<<< orphan*/  const hda_nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  HDA_AMP_MUTE ; 
 int /*<<< orphan*/  HDA_INPUT ; 
 int /*<<< orphan*/  HDA_OUTPUT ; 
 int FUNC0 (struct hda_codec*,int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct hda_codec*,int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hda_codec*,int /*<<< orphan*/  const,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct hda_codec *codec, hda_nid_t mix)
{
	int i, nums;
	const hda_nid_t *conn;
	bool has_amp;

	nums = FUNC2(codec, mix, &conn);
	has_amp = FUNC0(codec, mix, HDA_INPUT);
	for (i = 0; i < nums; i++) {
		if (has_amp)
			FUNC3(codec, mix, HDA_INPUT, i,
				   0xff, HDA_AMP_MUTE);
		else if (FUNC1(codec, conn[i], HDA_OUTPUT))
			FUNC3(codec, conn[i], HDA_OUTPUT, 0,
				   0xff, HDA_AMP_MUTE);
	}
}