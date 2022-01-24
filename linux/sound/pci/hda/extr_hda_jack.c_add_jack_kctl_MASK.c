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
struct auto_pin_cfg {int dummy; } ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 unsigned int AC_JACK_PORT_COMPLEX ; 
 unsigned int AC_JACK_PORT_NONE ; 
 int SNDRV_CTL_ELEM_ID_NAME_MAXLEN ; 
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,int /*<<< orphan*/ ,struct auto_pin_cfg const*,char*,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct hda_codec*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 

__attribute__((used)) static int FUNC9(struct hda_codec *codec, hda_nid_t nid,
			 const struct auto_pin_cfg *cfg,
			 const char *base_name)
{
	unsigned int def_conf, conn;
	char name[SNDRV_CTL_ELEM_ID_NAME_MAXLEN];
	int err;
	bool phantom_jack;

	if (!nid)
		return 0;
	def_conf = FUNC2(codec, nid);
	conn = FUNC0(def_conf);
	if (conn == AC_JACK_PORT_NONE)
		return 0;
	phantom_jack = (conn != AC_JACK_PORT_COMPLEX) ||
		       !FUNC1(codec, nid);

	if (base_name)
		FUNC6(name, base_name, sizeof(name));
	else
		FUNC3(codec, nid, cfg, name, sizeof(name), NULL);
	if (phantom_jack)
		/* Example final name: "Internal Mic Phantom Jack" */
		FUNC8(name, " Phantom", sizeof(name) - FUNC7(name) - 1);
	err = FUNC4(codec, nid, name, phantom_jack, 0, NULL);
	if (err < 0)
		return err;

	if (!phantom_jack)
		return FUNC5(codec, nid);
	return 0;
}