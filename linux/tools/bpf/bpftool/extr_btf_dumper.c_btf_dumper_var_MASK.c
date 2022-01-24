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
struct btf_type {int /*<<< orphan*/  type; int /*<<< orphan*/  name_off; } ;
struct btf_dumper {int /*<<< orphan*/  jw; int /*<<< orphan*/  btf; } ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct btf_type* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct btf_dumper const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(const struct btf_dumper *d, __u32 type_id,
			  __u8 bit_offset, const void *data)
{
	const struct btf_type *t = FUNC1(d->btf, type_id);
	int ret;

	FUNC5(d->jw);
	FUNC4(d->jw, FUNC0(d->btf, t->name_off));
	ret = FUNC2(d, t->type, bit_offset, data);
	FUNC3(d->jw);

	return ret;
}