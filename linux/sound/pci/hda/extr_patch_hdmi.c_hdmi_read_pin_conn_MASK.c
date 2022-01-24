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
struct hdmi_spec_per_pin {int /*<<< orphan*/  mux_nids; int /*<<< orphan*/  num_mux_nids; int /*<<< orphan*/  pin_nid; } ;
struct hdmi_spec {int dummy; } ;
struct hda_codec {struct hdmi_spec* spec; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 int AC_WCAP_CONN_LIST ; 
 int EINVAL ; 
 int /*<<< orphan*/  HDA_MAX_CONNECTIONS ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,char*,int /*<<< orphan*/ ,int) ; 
 struct hdmi_spec_per_pin* FUNC1 (struct hdmi_spec*,int) ; 
 int FUNC2 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct hda_codec *codec, int pin_idx)
{
	struct hdmi_spec *spec = codec->spec;
	struct hdmi_spec_per_pin *per_pin = FUNC1(spec, pin_idx);
	hda_nid_t pin_nid = per_pin->pin_nid;

	if (!(FUNC2(codec, pin_nid) & AC_WCAP_CONN_LIST)) {
		FUNC0(codec,
			   "HDMI: pin %d wcaps %#x does not support connection list\n",
			   pin_nid, FUNC2(codec, pin_nid));
		return -EINVAL;
	}

	/* all the device entries on the same pin have the same conn list */
	per_pin->num_mux_nids = FUNC3(codec, pin_nid,
							per_pin->mux_nids,
							HDA_MAX_CONNECTIONS);

	return 0;
}