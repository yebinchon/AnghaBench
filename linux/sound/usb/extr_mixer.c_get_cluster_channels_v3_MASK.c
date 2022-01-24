#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct uac3_cluster_header_descriptor {int bNrChannels; } ;
struct mixer_build {TYPE_1__* chip; } ;
typedef  int /*<<< orphan*/  c_header ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  UAC3_CS_REQ_HIGH_CAPABILITY_DESCRIPTOR ; 
 int USB_DIR_IN ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_CLASS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int,int /*<<< orphan*/ ,struct uac3_cluster_header_descriptor*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct mixer_build *state, unsigned int cluster_id)
{
	struct uac3_cluster_header_descriptor c_header;
	int err;

	err = FUNC0(state->chip->dev,
			FUNC3(state->chip->dev, 0),
			UAC3_CS_REQ_HIGH_CAPABILITY_DESCRIPTOR,
			USB_RECIP_INTERFACE | USB_TYPE_CLASS | USB_DIR_IN,
			cluster_id,
			FUNC1(state->chip),
			&c_header, sizeof(c_header));
	if (err < 0)
		goto error;
	if (err != sizeof(c_header)) {
		err = -EIO;
		goto error;
	}

	return c_header.bNrChannels;

error:
	FUNC2(state->chip, "cannot request logical cluster ID: %d (err: %d)\n", cluster_id, err);
	return err;
}