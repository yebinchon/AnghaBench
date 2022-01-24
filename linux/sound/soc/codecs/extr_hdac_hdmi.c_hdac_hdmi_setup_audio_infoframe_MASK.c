#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int u8 ;
struct hdmi_audio_infoframe {int channels; int channel_allocation; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* set_channel_count ) (struct hdac_device*,int /*<<< orphan*/ ,int) ;} ;
struct TYPE_8__ {TYPE_2__ ops; } ;
struct hdac_hdmi_priv {TYPE_4__ chmap; } ;
struct TYPE_5__ {int /*<<< orphan*/  spk_alloc; } ;
struct TYPE_7__ {int* eld_buffer; TYPE_1__ info; } ;
struct hdac_hdmi_port {TYPE_3__ eld; struct hdac_hdmi_pin* pin; } ;
struct hdac_hdmi_pin {int /*<<< orphan*/  nid; } ;
struct hdac_hdmi_pcm {int /*<<< orphan*/  chmap_set; int /*<<< orphan*/  chmap; int /*<<< orphan*/  channels; struct hdac_hdmi_cvt* cvt; } ;
struct hdac_hdmi_cvt {int /*<<< orphan*/  nid; } ;
struct hdac_device {int /*<<< orphan*/  dev; } ;
struct dp_audio_infoframe {int type; int len; int ver; int CC02_CT47; int CA; } ;
typedef  int /*<<< orphan*/  dp_ai ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int AC_DIPXMIT_BEST ; 
 int AC_DIPXMIT_DISABLE ; 
 int /*<<< orphan*/  AC_VERB_SET_HDMI_DIP_DATA ; 
 int /*<<< orphan*/  AC_VERB_SET_HDMI_DIP_XMIT ; 
#define  DRM_ELD_CONN_TYPE_DP 129 
#define  DRM_ELD_CONN_TYPE_HDMI 128 
 int EIO ; 
 int HDMI_AUDIO_INFOFRAME_SIZE ; 
 int HDMI_INFOFRAME_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int const*) ; 
 int /*<<< orphan*/  FUNC2 (struct hdac_device*,int /*<<< orphan*/ ,int,int) ; 
 struct hdac_hdmi_priv* FUNC3 (struct hdac_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct hdmi_audio_infoframe*) ; 
 int FUNC5 (struct hdmi_audio_infoframe*,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct dp_audio_infoframe*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct hdac_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct hdac_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct hdac_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC12(struct hdac_device *hdev,
		   struct hdac_hdmi_pcm *pcm, struct hdac_hdmi_port *port)
{
	uint8_t buffer[HDMI_INFOFRAME_HEADER_SIZE + HDMI_AUDIO_INFOFRAME_SIZE];
	struct hdmi_audio_infoframe frame;
	struct hdac_hdmi_pin *pin = port->pin;
	struct dp_audio_infoframe dp_ai;
	struct hdac_hdmi_priv *hdmi = FUNC3(hdev);
	struct hdac_hdmi_cvt *cvt = pcm->cvt;
	u8 *dip;
	int ret;
	int i;
	const u8 *eld_buf;
	u8 conn_type;
	int channels, ca;

	ca = FUNC7(hdev, port->eld.info.spk_alloc,
			pcm->channels, pcm->chmap_set, true, pcm->chmap);

	channels = FUNC9(ca);
	hdmi->chmap.ops.set_channel_count(hdev, cvt->nid, channels);

	FUNC10(&hdmi->chmap, pin->nid, false, ca,
				pcm->channels, pcm->chmap, pcm->chmap_set);

	eld_buf = port->eld.eld_buffer;
	conn_type = FUNC1(eld_buf);

	switch (conn_type) {
	case DRM_ELD_CONN_TYPE_HDMI:
		FUNC4(&frame);

		frame.channels = channels;
		frame.channel_allocation = ca;

		ret = FUNC5(&frame, buffer, sizeof(buffer));
		if (ret < 0)
			return ret;

		break;

	case DRM_ELD_CONN_TYPE_DP:
		FUNC6(&dp_ai, 0, sizeof(dp_ai));
		dp_ai.type	= 0x84;
		dp_ai.len	= 0x1b;
		dp_ai.ver	= 0x11 << 2;
		dp_ai.CC02_CT47	= channels - 1;
		dp_ai.CA	= ca;

		dip = (u8 *)&dp_ai;
		break;

	default:
		FUNC0(&hdev->dev, "Invalid connection type: %d\n", conn_type);
		return -EIO;
	}

	/* stop infoframe transmission */
	FUNC2(hdev, pin->nid, 0x0, 0x0);
	FUNC8(hdev, pin->nid, 0,
			AC_VERB_SET_HDMI_DIP_XMIT, AC_DIPXMIT_DISABLE);


	/*  Fill infoframe. Index auto-incremented */
	FUNC2(hdev, pin->nid, 0x0, 0x0);
	if (conn_type == DRM_ELD_CONN_TYPE_HDMI) {
		for (i = 0; i < sizeof(buffer); i++)
			FUNC8(hdev, pin->nid, 0,
				AC_VERB_SET_HDMI_DIP_DATA, buffer[i]);
	} else {
		for (i = 0; i < sizeof(dp_ai); i++)
			FUNC8(hdev, pin->nid, 0,
				AC_VERB_SET_HDMI_DIP_DATA, dip[i]);
	}

	/* Start infoframe */
	FUNC2(hdev, pin->nid, 0x0, 0x0);
	FUNC8(hdev, pin->nid, 0,
			AC_VERB_SET_HDMI_DIP_XMIT, AC_DIPXMIT_BEST);

	return 0;
}