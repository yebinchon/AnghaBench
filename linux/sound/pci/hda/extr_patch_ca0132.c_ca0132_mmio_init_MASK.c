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
 scalar_t__ QUIRK_AE5 ; 
 scalar_t__ QUIRK_ZXR ; 
 scalar_t__ FUNC0 (struct ca0132_spec*) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct hda_codec *codec)
{
	struct ca0132_spec *spec = codec->spec;

	if (FUNC0(spec) == QUIRK_AE5)
		FUNC1(0x00000001, spec->mem_base + 0x400);
	else
		FUNC1(0x00000000, spec->mem_base + 0x400);

	if (FUNC0(spec) == QUIRK_AE5)
		FUNC1(0x00000001, spec->mem_base + 0x408);
	else
		FUNC1(0x00000000, spec->mem_base + 0x408);

	if (FUNC0(spec) == QUIRK_AE5)
		FUNC1(0x00000001, spec->mem_base + 0x40c);
	else
		FUNC1(0x00000000, spec->mem_base + 0x40C);

	if (FUNC0(spec) == QUIRK_ZXR)
		FUNC1(0x00880640, spec->mem_base + 0x01C);
	else
		FUNC1(0x00880680, spec->mem_base + 0x01C);

	if (FUNC0(spec) == QUIRK_AE5)
		FUNC1(0x00000080, spec->mem_base + 0xC0C);
	else
		FUNC1(0x00000083, spec->mem_base + 0xC0C);

	FUNC1(0x00000030, spec->mem_base + 0xC00);
	FUNC1(0x00000000, spec->mem_base + 0xC04);

	if (FUNC0(spec) == QUIRK_AE5)
		FUNC1(0x00000000, spec->mem_base + 0xC0C);
	else
		FUNC1(0x00000003, spec->mem_base + 0xC0C);

	FUNC1(0x00000003, spec->mem_base + 0xC0C);
	FUNC1(0x00000003, spec->mem_base + 0xC0C);
	FUNC1(0x00000003, spec->mem_base + 0xC0C);

	if (FUNC0(spec) == QUIRK_AE5)
		FUNC1(0x00000001, spec->mem_base + 0xC08);
	else
		FUNC1(0x000000C1, spec->mem_base + 0xC08);

	FUNC1(0x000000F1, spec->mem_base + 0xC08);
	FUNC1(0x00000001, spec->mem_base + 0xC08);
	FUNC1(0x000000C7, spec->mem_base + 0xC08);
	FUNC1(0x000000C1, spec->mem_base + 0xC08);
	FUNC1(0x00000080, spec->mem_base + 0xC04);

	if (FUNC0(spec) == QUIRK_AE5) {
		FUNC1(0x00000000, spec->mem_base + 0x42c);
		FUNC1(0x00000000, spec->mem_base + 0x46c);
		FUNC1(0x00000000, spec->mem_base + 0x4ac);
		FUNC1(0x00000000, spec->mem_base + 0x4ec);
		FUNC1(0x00000000, spec->mem_base + 0x43c);
		FUNC1(0x00000000, spec->mem_base + 0x47c);
		FUNC1(0x00000000, spec->mem_base + 0x4bc);
		FUNC1(0x00000000, spec->mem_base + 0x4fc);
		FUNC1(0x00000600, spec->mem_base + 0x100);
		FUNC1(0x00000014, spec->mem_base + 0x410);
		FUNC1(0x0000060f, spec->mem_base + 0x100);
		FUNC1(0x0000070f, spec->mem_base + 0x100);
		FUNC1(0x00000aff, spec->mem_base + 0x830);
		FUNC1(0x00000000, spec->mem_base + 0x86c);
		FUNC1(0x0000006b, spec->mem_base + 0x800);
		FUNC1(0x00000001, spec->mem_base + 0x86c);
		FUNC1(0x0000006b, spec->mem_base + 0x800);
		FUNC1(0x00000057, spec->mem_base + 0x804);
		FUNC1(0x00800000, spec->mem_base + 0x20c);
	}
}