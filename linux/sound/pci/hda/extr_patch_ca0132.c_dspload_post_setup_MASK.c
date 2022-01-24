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
struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ca0132_spec*) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,char*) ; 

__attribute__((used)) static void FUNC4(struct hda_codec *codec)
{
	struct ca0132_spec *spec = codec->spec;
	FUNC3(codec, "---- dspload_post_setup ------\n");
	if (!FUNC1(spec)) {
		/*set DSP speaker to 2.0 configuration*/
		FUNC2(codec, FUNC0(0x18), 0x08080080);
		FUNC2(codec, FUNC0(0x19), 0x3f800000);

		/*update write pointer*/
		FUNC2(codec, FUNC0(0x29), 0x00000002);
	}
}