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
struct hda_jack_callback {int dummy; } ;
struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*) ; 
 scalar_t__ FUNC2 (struct ca0132_spec*) ; 

__attribute__((used)) static void FUNC3(struct hda_codec *codec, struct hda_jack_callback *cb)
{
	struct ca0132_spec *spec = codec->spec;

	if (FUNC2(spec))
		FUNC0(codec);
	else
		FUNC1(codec);
}