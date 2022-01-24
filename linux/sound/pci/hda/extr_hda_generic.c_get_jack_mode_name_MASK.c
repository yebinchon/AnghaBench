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
struct hda_gen_spec {int /*<<< orphan*/  autocfg; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct hda_codec*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,size_t,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 

__attribute__((used)) static void FUNC3(struct hda_codec *codec, hda_nid_t pin,
			       char *name, size_t name_len)
{
	struct hda_gen_spec *spec = codec->spec;
	int idx = 0;

	FUNC1(codec, pin, &spec->autocfg, name, name_len, &idx);
	FUNC2(name, " Jack Mode", name_len);

	for (; FUNC0(codec, name, idx); idx++)
		;
}