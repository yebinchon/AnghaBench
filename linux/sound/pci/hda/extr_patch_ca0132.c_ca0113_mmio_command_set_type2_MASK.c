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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct hda_codec *codec,
		unsigned int group, unsigned int target, unsigned int value)
{
	struct ca0132_spec *spec = codec->spec;
	unsigned int write_val;

	FUNC2(0x0000007e, spec->mem_base + 0x210);
	FUNC1(spec->mem_base + 0x210);
	FUNC2(0x0000005a, spec->mem_base + 0x210);
	FUNC1(spec->mem_base + 0x210);
	FUNC1(spec->mem_base + 0x210);

	FUNC2(0x00800003, spec->mem_base + 0x20c);
	FUNC2(group, spec->mem_base + 0x804);

	FUNC2(0x00800005, spec->mem_base + 0x20c);
	write_val = (target & 0xff);
	write_val |= (value << 8);


	FUNC2(write_val, spec->mem_base + 0x204);
	FUNC0(20);
	FUNC1(spec->mem_base + 0x860);
	FUNC1(spec->mem_base + 0x854);
	FUNC1(spec->mem_base + 0x840);

	FUNC2(0x00800004, spec->mem_base + 0x20c);
	FUNC2(0x00000000, spec->mem_base + 0x210);
	FUNC1(spec->mem_base + 0x210);
	FUNC1(spec->mem_base + 0x210);
}