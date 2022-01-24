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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct usb_mixer_interface {TYPE_1__* chip; struct scarlett2_mixer_data* private_data; } ;
struct scarlett2_usb_packet {void* data; scalar_t__ cmd; scalar_t__ seq; scalar_t__ size; scalar_t__ error; scalar_t__ pad; } ;
struct scarlett2_mixer_data {int /*<<< orphan*/  usb_mutex; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SCARLETT2_USB_VENDOR_SPECIFIC_CMD_REQ ; 
 int /*<<< orphan*/  SCARLETT2_USB_VENDOR_SPECIFIC_CMD_RESP ; 
 int /*<<< orphan*/  SCARLETT2_USB_VENDOR_SPECIFIC_INTERFACE ; 
 int USB_DIR_IN ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_CLASS ; 
 int /*<<< orphan*/  FUNC0 (struct scarlett2_usb_packet*) ; 
 struct scarlett2_usb_packet* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct scarlett2_mixer_data*,struct scarlett2_usb_packet*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct scarlett2_usb_packet*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(
	struct usb_mixer_interface *mixer, u32 cmd,
	void *req_data, u16 req_size, void *resp_data, u16 resp_size)
{
	struct scarlett2_mixer_data *private = mixer->private_data;
	u16 req_buf_size = sizeof(struct scarlett2_usb_packet) + req_size;
	u16 resp_buf_size = sizeof(struct scarlett2_usb_packet) + resp_size;
	struct scarlett2_usb_packet *req = NULL, *resp = NULL;
	int err = 0;

	req = FUNC1(req_buf_size, GFP_KERNEL);
	if (!req) {
		err = -ENOMEM;
		goto error;
	}

	resp = FUNC1(resp_buf_size, GFP_KERNEL);
	if (!resp) {
		err = -ENOMEM;
		goto error;
	}

	FUNC4(&private->usb_mutex);

	/* build request message and send it */

	FUNC6(private, req, cmd, req_size);

	if (req_size)
		FUNC3(req->data, req_data, req_size);

	err = FUNC7(mixer->chip->dev,
			FUNC9(mixer->chip->dev, 0),
			SCARLETT2_USB_VENDOR_SPECIFIC_CMD_REQ,
			USB_RECIP_INTERFACE | USB_TYPE_CLASS | USB_DIR_OUT,
			0,
			SCARLETT2_USB_VENDOR_SPECIFIC_INTERFACE,
			req,
			req_buf_size);

	if (err != req_buf_size) {
		FUNC8(
			mixer->chip,
			"Scarlett Gen 2 USB request result cmd %x was %d\n",
			cmd, err);
		err = -EINVAL;
		goto unlock;
	}

	/* send a second message to get the response */

	err = FUNC7(mixer->chip->dev,
			FUNC9(mixer->chip->dev, 0),
			SCARLETT2_USB_VENDOR_SPECIFIC_CMD_RESP,
			USB_RECIP_INTERFACE | USB_TYPE_CLASS | USB_DIR_IN,
			0,
			SCARLETT2_USB_VENDOR_SPECIFIC_INTERFACE,
			resp,
			resp_buf_size);

	/* validate the response */

	if (err != resp_buf_size) {
		FUNC8(
			mixer->chip,
			"Scarlett Gen 2 USB response result cmd %x was %d\n",
			cmd, err);
		err = -EINVAL;
		goto unlock;
	}

	if (resp->cmd != req->cmd ||
	    resp->seq != req->seq ||
	    resp_size != FUNC2(resp->size) ||
	    resp->error ||
	    resp->pad) {
		FUNC8(
			mixer->chip,
			"Scarlett Gen 2 USB invalid response; "
			   "cmd tx/rx %d/%d seq %d/%d size %d/%d "
			   "error %d pad %d\n",
			FUNC2(req->cmd), FUNC2(resp->cmd),
			FUNC2(req->seq), FUNC2(resp->seq),
			resp_size, FUNC2(resp->size),
			FUNC2(resp->error),
			FUNC2(resp->pad));
		err = -EINVAL;
		goto unlock;
	}

	if (resp_size > 0)
		FUNC3(resp_data, resp->data, resp_size);

unlock:
	FUNC5(&private->usb_mutex);
error:
	FUNC0(req);
	FUNC0(resp);
	return err;
}