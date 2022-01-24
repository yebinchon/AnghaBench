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
struct id_stack {int cnt; int /*<<< orphan*/ * ids; } ;
struct btf_type {int dummy; } ;
struct btf_dump {int /*<<< orphan*/  btf; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
#define  BTF_KIND_CONST 130 
#define  BTF_KIND_RESTRICT 129 
#define  BTF_KIND_VOLATILE 128 
 struct btf_type* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct btf_dump*,char*) ; 
 int FUNC2 (struct btf_type const*) ; 

__attribute__((used)) static void FUNC3(struct btf_dump *d, struct id_stack *decl_stack)
{
	const struct btf_type *t;
	__u32 id;

	while (decl_stack->cnt) {
		id = decl_stack->ids[decl_stack->cnt - 1];
		t = FUNC0(d->btf, id);

		switch (FUNC2(t)) {
		case BTF_KIND_VOLATILE:
			FUNC1(d, "volatile ");
			break;
		case BTF_KIND_CONST:
			FUNC1(d, "const ");
			break;
		case BTF_KIND_RESTRICT:
			FUNC1(d, "restrict ");
			break;
		default:
			return;
		}
		decl_stack->cnt--;
	}
}