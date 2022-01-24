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
struct usb_line6_toneport {int /*<<< orphan*/  firmware_version; int /*<<< orphan*/  serial_number; int /*<<< orphan*/  type; } ;
struct usb_line6 {int /*<<< orphan*/  card; int /*<<< orphan*/  line6pcm; int /*<<< orphan*/  startup; int /*<<< orphan*/  disconnect; } ;
struct usb_device_id {int /*<<< orphan*/  driver_info; } ;

/* Variables and functions */
 int FUNC0 (struct usb_line6*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_line6*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_line6*,int /*<<< orphan*/ *) ; 
 struct usb_line6_toneport* FUNC3 (struct usb_line6*) ; 
 int /*<<< orphan*/  line6_toneport_disconnect ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  toneport_control_monitor ; 
 int /*<<< orphan*/  toneport_control_source ; 
 scalar_t__ FUNC7 (struct usb_line6_toneport*) ; 
 scalar_t__ FUNC8 (struct usb_line6_toneport*) ; 
 int FUNC9 (struct usb_line6_toneport*) ; 
 int /*<<< orphan*/  toneport_pcm_properties ; 
 int FUNC10 (struct usb_line6_toneport*) ; 
 int /*<<< orphan*/  toneport_startup ; 

__attribute__((used)) static int FUNC11(struct usb_line6 *line6,
			 const struct usb_device_id *id)
{
	int err;
	struct usb_line6_toneport *toneport = FUNC3(line6);

	toneport->type = id->driver_info;

	line6->disconnect = line6_toneport_disconnect;
	line6->startup = toneport_startup;

	/* initialize PCM subsystem: */
	err = FUNC0(line6, &toneport_pcm_properties);
	if (err < 0)
		return err;

	/* register monitor control: */
	err = FUNC5(line6->card,
			  FUNC6(&toneport_control_monitor,
				       line6->line6pcm));
	if (err < 0)
		return err;

	/* register source select control: */
	if (FUNC8(toneport)) {
		err =
		    FUNC5(line6->card,
				FUNC6(&toneport_control_source,
					     line6->line6pcm));
		if (err < 0)
			return err;
	}

	FUNC2(line6, &toneport->serial_number);
	FUNC1(line6, 0x80c2, &toneport->firmware_version, 1);

	if (FUNC7(toneport)) {
		err = FUNC9(toneport);
		if (err < 0)
			return err;
	}

	err = FUNC10(toneport);
	if (err)
		return err;

	/* register audio system: */
	return FUNC4(line6->card);
}