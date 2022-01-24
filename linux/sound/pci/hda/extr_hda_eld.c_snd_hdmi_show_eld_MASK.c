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
struct parsed_hdmi_eld {size_t conn_type; int sad_count; scalar_t__ sad; scalar_t__ spk_alloc; int /*<<< orphan*/  monitor_name; } ;
struct hda_codec {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int SND_PRINT_CHANNEL_ALLOCATION_ADVISED_BUFSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,char*,char*,...) ; 
 int /*<<< orphan*/ * eld_connection_type_names ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*,int) ; 

void FUNC3(struct hda_codec *codec, struct parsed_hdmi_eld *e)
{
	int i;

	FUNC0(codec, "HDMI: detected monitor %s at connection type %s\n",
			e->monitor_name,
			eld_connection_type_names[e->conn_type]);

	if (e->spk_alloc) {
		char buf[SND_PRINT_CHANNEL_ALLOCATION_ADVISED_BUFSIZE];
		FUNC2(e->spk_alloc, buf, sizeof(buf));
		FUNC0(codec, "HDMI: available speakers:%s\n", buf);
	}

	for (i = 0; i < e->sad_count; i++)
		FUNC1(codec, e->sad + i);
}