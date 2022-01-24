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
struct hdmi_spec {int /*<<< orphan*/  pcm_lock; } ;
struct hda_codec {struct hdmi_spec* spec; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hdmi_spec*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct hda_codec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*) ; 

__attribute__((used)) static void FUNC6(struct hda_codec *codec, hda_nid_t nid,
				      int dev_id)
{
	struct hdmi_spec *spec = codec->spec;
	int pin_idx = FUNC4(codec, nid, dev_id);

	if (pin_idx < 0)
		return;
	FUNC2(&spec->pcm_lock);
	if (FUNC1(FUNC0(spec, pin_idx), 1))
		FUNC5(codec);
	FUNC3(&spec->pcm_lock);
}