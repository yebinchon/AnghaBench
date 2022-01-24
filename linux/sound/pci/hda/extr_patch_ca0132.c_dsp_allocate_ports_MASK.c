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
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,char*) ; 
 int FUNC1 (struct hda_codec*,unsigned int,unsigned int,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC2(struct hda_codec *codec,
			unsigned int num_chans,
			unsigned int rate_multi, unsigned int *port_map)
{
	int status;

	FUNC0(codec, "     dsp_allocate_ports() -- begin\n");

	if ((rate_multi != 1) && (rate_multi != 2) && (rate_multi != 4)) {
		FUNC0(codec, "bad rate multiple\n");
		return -EINVAL;
	}

	status = FUNC1(codec, num_chans,
					   rate_multi, 0, port_map);

	FUNC0(codec, "     dsp_allocate_ports() -- complete\n");

	return status;
}