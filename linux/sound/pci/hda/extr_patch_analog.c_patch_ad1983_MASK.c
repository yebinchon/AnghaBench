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
struct hda_codec {struct ad198x_spec* spec; } ;
struct TYPE_2__ {int mixer_nid; int beep_nid; } ;
struct ad198x_spec {TYPE_1__ gen; } ;
typedef  int hda_nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  HDA_OUTPUT ; 
 int FUNC1 (struct hda_codec*) ; 
 int FUNC2 (struct hda_codec*,int) ; 
 int FUNC3 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC4 (struct ad198x_spec*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC6 (struct hda_codec*,int,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC7(struct hda_codec *codec)
{
	struct ad198x_spec *spec;
	static hda_nid_t conn_0c[] = { 0x08 };
	static hda_nid_t conn_0d[] = { 0x09 };
	int err;

	err = FUNC3(codec);
	if (err < 0)
		return err;
	spec = codec->spec;

	spec->gen.mixer_nid = 0x0e;
	spec->gen.beep_nid = 0x10;
	FUNC4(spec, 0x10, 0, HDA_OUTPUT);

	/* limit the loopback routes not to confuse the parser */
	FUNC6(codec, 0x0c, FUNC0(conn_0c), conn_0c);
	FUNC6(codec, 0x0d, FUNC0(conn_0d), conn_0d);

	err = FUNC2(codec, false);
	if (err < 0)
		goto error;
	err = FUNC1(codec);
	if (err < 0)
		goto error;
	return 0;

 error:
	FUNC5(codec);
	return err;
}