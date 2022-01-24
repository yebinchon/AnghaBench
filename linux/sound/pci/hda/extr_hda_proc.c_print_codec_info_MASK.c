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
struct snd_info_entry {struct hda_codec* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct TYPE_2__ {unsigned int afg; } ;
struct hda_codec {int /*<<< orphan*/  (* proc_widget_hook ) (struct snd_info_buffer*,struct hda_codec*,unsigned int) ;scalar_t__ dp_mst; scalar_t__ pin_amp_workaround; scalar_t__ single_adc_amp; int /*<<< orphan*/  nids; int /*<<< orphan*/  mixers; TYPE_1__ core; } ;
typedef  unsigned int hda_nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  AC_PAR_AUDIO_WIDGET_CAP ; 
 unsigned int AC_WCAP_CONN_LIST ; 
 unsigned int AC_WCAP_CP_CAPS ; 
 unsigned int AC_WCAP_DELAY ; 
 unsigned int AC_WCAP_DELAY_SHIFT ; 
 unsigned int AC_WCAP_DIGITAL ; 
 unsigned int AC_WCAP_FORMAT_OVRD ; 
 unsigned int AC_WCAP_IN_AMP ; 
 unsigned int AC_WCAP_LR_SWAP ; 
 unsigned int AC_WCAP_OUT_AMP ; 
 unsigned int AC_WCAP_POWER ; 
 unsigned int AC_WCAP_PROC_WID ; 
 unsigned int AC_WCAP_STEREO ; 
 unsigned int AC_WCAP_STRIPE ; 
 unsigned int AC_WCAP_UNSOL_CAP ; 
#define  AC_WID_AUD_IN 131 
#define  AC_WID_AUD_OUT 130 
#define  AC_WID_PIN 129 
#define  AC_WID_VOL_KNB 128 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HDA_INPUT ; 
 int /*<<< orphan*/  HDA_OUTPUT ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int*) ; 
 unsigned int* FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (struct hda_codec*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_info_buffer*,struct hda_codec*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_info_buffer*,struct hda_codec*,unsigned int,int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_info_buffer*,struct hda_codec*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,struct snd_info_buffer*) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_info_buffer*,struct hda_codec*,unsigned int,unsigned int,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct snd_info_buffer*,struct hda_codec*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct snd_info_buffer*,struct hda_codec*,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (struct snd_info_buffer*,struct hda_codec*,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (struct snd_info_buffer*,struct hda_codec*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct snd_info_buffer*,struct hda_codec*,unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (struct snd_info_buffer*,struct hda_codec*,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (struct snd_info_buffer*,struct hda_codec*,unsigned int,int*) ; 
 int /*<<< orphan*/  FUNC18 (struct snd_info_buffer*,struct hda_codec*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC19 (struct snd_info_buffer*,struct hda_codec*,unsigned int) ; 
 int /*<<< orphan*/  FUNC20 (struct snd_info_buffer*,struct hda_codec*,unsigned int) ; 
 int /*<<< orphan*/  FUNC21 (struct snd_info_buffer*,struct hda_codec*,unsigned int) ; 
 int /*<<< orphan*/  FUNC22 (struct snd_info_buffer*,struct hda_codec*,unsigned int) ; 
 int FUNC23 (struct hda_codec*,unsigned int) ; 
 scalar_t__ FUNC24 (struct hda_codec*,unsigned int,unsigned int*,int) ; 
 int FUNC25 (struct hda_codec*,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC26 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC27 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC28 (struct snd_info_buffer*,char*,...) ; 
 int /*<<< orphan*/  FUNC29 (struct snd_info_buffer*,struct hda_codec*,unsigned int) ; 
 int /*<<< orphan*/  FUNC30 (struct snd_info_buffer*,struct hda_codec*,unsigned int) ; 

__attribute__((used)) static void FUNC31(struct snd_info_entry *entry,
			     struct snd_info_buffer *buffer)
{
	struct hda_codec *codec = entry->private_data;
	hda_nid_t nid, fg;
	int i, nodes;

	FUNC9(&codec->core, buffer);
	fg = codec->core.afg;
	if (!fg)
		return;
	FUNC27(codec);
	FUNC28(buffer, "Default PCM:\n");
	FUNC16(buffer, codec, fg);
	FUNC28(buffer, "Default Amp-In caps: ");
	FUNC6(buffer, codec, fg, HDA_INPUT);
	FUNC28(buffer, "Default Amp-Out caps: ");
	FUNC6(buffer, codec, fg, HDA_OUTPUT);
	FUNC28(buffer, "State of AFG node 0x%02x:\n", fg);
	FUNC19(buffer, codec, fg);

	nodes = FUNC25(codec, fg, &nid);
	if (! nid || nodes < 0) {
		FUNC28(buffer, "Invalid AFG subtree\n");
		FUNC26(codec);
		return;
	}

	FUNC13(buffer, codec, fg);
	if (codec->proc_widget_hook)
		codec->proc_widget_hook(buffer, codec, fg);

	for (i = 0; i < nodes; i++, nid++) {
		unsigned int wid_caps =
			FUNC5(codec, nid, AC_PAR_AUDIO_WIDGET_CAP);
		unsigned int wid_type = FUNC1(wid_caps);
		hda_nid_t *conn = NULL;
		int conn_len = 0;

		FUNC28(buffer, "Node 0x%02x [%s] wcaps 0x%x:", nid,
			    FUNC2(wid_type), wid_caps);
		if (wid_caps & AC_WCAP_STEREO) {
			unsigned int chans = FUNC0(wid_caps);
			if (chans == 2)
				FUNC28(buffer, " Stereo");
			else
				FUNC28(buffer, " %d-Channels", chans);
		} else
			FUNC28(buffer, " Mono");
		if (wid_caps & AC_WCAP_DIGITAL)
			FUNC28(buffer, " Digital");
		if (wid_caps & AC_WCAP_IN_AMP)
			FUNC28(buffer, " Amp-In");
		if (wid_caps & AC_WCAP_OUT_AMP)
			FUNC28(buffer, " Amp-Out");
		if (wid_caps & AC_WCAP_STRIPE)
			FUNC28(buffer, " Stripe");
		if (wid_caps & AC_WCAP_LR_SWAP)
			FUNC28(buffer, " R/L");
		if (wid_caps & AC_WCAP_CP_CAPS)
			FUNC28(buffer, " CP");
		FUNC28(buffer, "\n");

		FUNC14(buffer, codec, nid, &codec->mixers);
		FUNC14(buffer, codec, nid, &codec->nids);
		FUNC15(buffer, codec, nid);

		/* volume knob is a special widget that always have connection
		 * list
		 */
		if (wid_type == AC_WID_VOL_KNB)
			wid_caps |= AC_WCAP_CONN_LIST;

		if (wid_caps & AC_WCAP_CONN_LIST) {
			conn_len = FUNC23(codec, nid);
			if (conn_len > 0) {
				conn = FUNC4(conn_len,
						     sizeof(hda_nid_t),
						     GFP_KERNEL);
				if (!conn)
					return;
				if (FUNC24(codec, nid, conn,
								conn_len) < 0)
					conn_len = 0;
			}
		}

		if (wid_caps & AC_WCAP_IN_AMP) {
			FUNC28(buffer, "  Amp-In caps: ");
			FUNC6(buffer, codec, nid, HDA_INPUT);
			FUNC28(buffer, "  Amp-In vals: ");
			if (wid_type == AC_WID_PIN ||
			    (codec->single_adc_amp &&
			     wid_type == AC_WID_AUD_IN))
				FUNC7(buffer, codec, nid, HDA_INPUT,
					       wid_caps, 1);
			else
				FUNC7(buffer, codec, nid, HDA_INPUT,
					       wid_caps, conn_len);
		}
		if (wid_caps & AC_WCAP_OUT_AMP) {
			FUNC28(buffer, "  Amp-Out caps: ");
			FUNC6(buffer, codec, nid, HDA_OUTPUT);
			FUNC28(buffer, "  Amp-Out vals: ");
			if (wid_type == AC_WID_PIN &&
			    codec->pin_amp_workaround)
				FUNC7(buffer, codec, nid, HDA_OUTPUT,
					       wid_caps, conn_len);
			else
				FUNC7(buffer, codec, nid, HDA_OUTPUT,
					       wid_caps, 1);
		}

		switch (wid_type) {
		case AC_WID_PIN: {
			int supports_vref;
			FUNC17(buffer, codec, nid, &supports_vref);
			FUNC18(buffer, codec, nid, supports_vref);
			break;
		}
		case AC_WID_VOL_KNB:
			FUNC22(buffer, codec, nid);
			break;
		case AC_WID_AUD_OUT:
		case AC_WID_AUD_IN:
			FUNC8(buffer, codec, nid, wid_type);
			if (wid_caps & AC_WCAP_DIGITAL)
				FUNC12(buffer, codec, nid);
			if (wid_caps & AC_WCAP_FORMAT_OVRD) {
				FUNC28(buffer, "  PCM:\n");
				FUNC16(buffer, codec, nid);
			}
			break;
		}

		if (wid_caps & AC_WCAP_UNSOL_CAP)
			FUNC21(buffer, codec, nid);

		if (wid_caps & AC_WCAP_POWER)
			FUNC19(buffer, codec, nid);

		if (wid_caps & AC_WCAP_DELAY)
			FUNC28(buffer, "  Delay: %d samples\n",
				    (wid_caps & AC_WCAP_DELAY) >>
				    AC_WCAP_DELAY_SHIFT);

		if (wid_type == AC_WID_PIN && codec->dp_mst)
			FUNC11(buffer, codec, nid);

		if (wid_caps & AC_WCAP_CONN_LIST)
			FUNC10(buffer, codec, nid, wid_type,
					conn, conn_len);

		if (wid_caps & AC_WCAP_PROC_WID)
			FUNC20(buffer, codec, nid);

		if (codec->proc_widget_hook)
			codec->proc_widget_hook(buffer, codec, nid);

		FUNC3(conn);
	}
	FUNC26(codec);
}