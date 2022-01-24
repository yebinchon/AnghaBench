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
struct ca0132_spec {scalar_t__ mem_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct hda_codec *codec)
{
	struct ca0132_spec *spec = codec->spec;
	unsigned int i;

	for (i = 0; i < 4; i++)
		FUNC1(0x0, spec->mem_base + 0x100);
	for (i = 0; i < 8; i++)
		FUNC1(0xb3, spec->mem_base + 0x304);

	FUNC0(codec, 0, false);
	FUNC0(codec, 1, false);
	FUNC0(codec, 4, true);
	FUNC0(codec, 5, false);
	FUNC0(codec, 7, false);
}