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
typedef  int /*<<< orphan*/  u8 ;
struct hdmi_codec_priv {int /*<<< orphan*/  eld; } ;
struct hdmi_codec_cea_spk_alloc {scalar_t__ ca_id; unsigned char n_ch; unsigned long mask; } ;

/* Variables and functions */
 int FUNC0 (struct hdmi_codec_cea_spk_alloc*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct hdmi_codec_cea_spk_alloc* hdmi_codec_channel_alloc ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct hdmi_codec_priv *hcp,
					     unsigned char channels)
{
	int i;
	u8 spk_alloc;
	unsigned long spk_mask;
	const struct hdmi_codec_cea_spk_alloc *cap = hdmi_codec_channel_alloc;

	spk_alloc = FUNC1(hcp->eld);
	spk_mask = FUNC2(spk_alloc);

	for (i = 0; i < FUNC0(hdmi_codec_channel_alloc); i++, cap++) {
		/* If spk_alloc == 0, HDMI is unplugged return stereo config*/
		if (!spk_alloc && cap->ca_id == 0)
			return i;
		if (cap->n_ch != channels)
			continue;
		if (!(cap->mask == (spk_mask & cap->mask)))
			continue;
		return i;
	}

	return -EINVAL;
}