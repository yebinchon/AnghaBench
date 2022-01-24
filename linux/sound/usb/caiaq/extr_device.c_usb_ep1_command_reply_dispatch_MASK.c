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
struct urb {unsigned char* transfer_buffer; int actual_length; int /*<<< orphan*/  status; struct snd_usb_caiaqdev* context; TYPE_1__* dev; } ;
struct TYPE_7__ {scalar_t__ actual_length; } ;
struct TYPE_6__ {int /*<<< orphan*/  usb_id; } ;
struct TYPE_8__ {int /*<<< orphan*/  data_alignment; int /*<<< orphan*/  num_midi_out; int /*<<< orphan*/  num_midi_in; int /*<<< orphan*/  num_analog_audio_out; int /*<<< orphan*/  num_analog_audio_in; int /*<<< orphan*/  fw_version; } ;
struct snd_usb_caiaqdev {unsigned char audio_parm_answer; TYPE_3__ ep1_in_urb; int /*<<< orphan*/  ep1_wait_queue; TYPE_4__* control_state; TYPE_2__ chip; int /*<<< orphan*/  spec_received; TYPE_4__ spec; } ;
struct device {int dummy; } ;
struct caiaq_device_spec {int dummy; } ;
struct TYPE_5__ {struct device dev; } ;

/* Variables and functions */
#define  EP1_CMD_AUDIO_PARAMS 133 
#define  EP1_CMD_GET_DEVICE_INFO 132 
#define  EP1_CMD_MIDI_READ 131 
#define  EP1_CMD_READ_ANALOG 130 
#define  EP1_CMD_READ_ERP 129 
#define  EP1_CMD_READ_IO 128 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_PID_AUDIO8DJ ; 
 int /*<<< orphan*/  USB_VID_NATIVEINSTRUMENTS ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_usb_caiaqdev*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_usb_caiaqdev*,unsigned char,unsigned char*,unsigned char) ; 
 int FUNC8 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10 (struct urb* urb)
{
	int ret;
	struct device *dev = &urb->dev->dev;
	struct snd_usb_caiaqdev *cdev = urb->context;
	unsigned char *buf = urb->transfer_buffer;

	if (urb->status || !cdev) {
		FUNC3(dev, "received EP1 urb->status = %i\n", urb->status);
		return;
	}

	switch(buf[0]) {
	case EP1_CMD_GET_DEVICE_INFO:
	 	FUNC5(&cdev->spec, buf+1, sizeof(struct caiaq_device_spec));
		cdev->spec.fw_version = FUNC4(cdev->spec.fw_version);
		FUNC1(dev, "device spec (firmware %d): audio: %d in, %d out, "
			"MIDI: %d in, %d out, data alignment %d\n",
			cdev->spec.fw_version,
			cdev->spec.num_analog_audio_in,
			cdev->spec.num_analog_audio_out,
			cdev->spec.num_midi_in,
			cdev->spec.num_midi_out,
			cdev->spec.data_alignment);

		cdev->spec_received++;
		FUNC9(&cdev->ep1_wait_queue);
		break;
	case EP1_CMD_AUDIO_PARAMS:
		cdev->audio_parm_answer = buf[1];
		FUNC9(&cdev->ep1_wait_queue);
		break;
	case EP1_CMD_MIDI_READ:
		FUNC7(cdev, buf[1], buf + 3, buf[2]);
		break;
	case EP1_CMD_READ_IO:
		if (cdev->chip.usb_id ==
			FUNC0(USB_VID_NATIVEINSTRUMENTS, USB_PID_AUDIO8DJ)) {
			if (urb->actual_length > sizeof(cdev->control_state))
				urb->actual_length = sizeof(cdev->control_state);
			FUNC5(cdev->control_state, buf + 1, urb->actual_length);
			FUNC9(&cdev->ep1_wait_queue);
			break;
		}
#ifdef CONFIG_SND_USB_CAIAQ_INPUT
		/* fall through */
	case EP1_CMD_READ_ERP:
	case EP1_CMD_READ_ANALOG:
		snd_usb_caiaq_input_dispatch(cdev, buf, urb->actual_length);
#endif
		break;
	}

	cdev->ep1_in_urb.actual_length = 0;
	ret = FUNC8(&cdev->ep1_in_urb, GFP_ATOMIC);
	if (ret < 0)
		FUNC2(dev, "unable to submit urb. OOM!?\n");
}