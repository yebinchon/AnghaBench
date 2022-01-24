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
struct core_reloc_ints {int /*<<< orphan*/  s64_field; int /*<<< orphan*/  u64_field; int /*<<< orphan*/  s32_field; int /*<<< orphan*/  u32_field; int /*<<< orphan*/  s16_field; int /*<<< orphan*/  u16_field; int /*<<< orphan*/  s8_field; int /*<<< orphan*/  u8_field; } ;
struct TYPE_2__ {int /*<<< orphan*/  out; int /*<<< orphan*/  in; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__ data ; 

int FUNC1(void *ctx)
{
	struct core_reloc_ints *in = (void *)&data.in;
	struct core_reloc_ints *out = (void *)&data.out;

	if (FUNC0(&out->u8_field, &in->u8_field) ||
	    FUNC0(&out->s8_field, &in->s8_field) ||
	    FUNC0(&out->u16_field, &in->u16_field) ||
	    FUNC0(&out->s16_field, &in->s16_field) ||
	    FUNC0(&out->u32_field, &in->u32_field) ||
	    FUNC0(&out->s32_field, &in->s32_field) ||
	    FUNC0(&out->u64_field, &in->u64_field) ||
	    FUNC0(&out->s64_field, &in->s64_field))
		return 1;

	return 0;
}