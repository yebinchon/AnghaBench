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
struct btf_type {scalar_t__ name_off; } ;
struct btf_member {int /*<<< orphan*/  type; int /*<<< orphan*/  name_off; } ;
struct btf_dump {int /*<<< orphan*/  btf; } ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  int __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct btf_dump*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct btf_dump*,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct btf_dump*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct btf_dump*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct btf_type const*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct btf_type const*) ; 
 int FUNC8 (struct btf_type const*,int) ; 
 int FUNC9 (struct btf_type const*,int) ; 
 struct btf_member* FUNC10 (struct btf_type const*) ; 
 char* FUNC11 (struct btf_dump*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct btf_type const*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 

__attribute__((used)) static void FUNC15(struct btf_dump *d,
				     __u32 id,
				     const struct btf_type *t,
				     int lvl)
{
	const struct btf_member *m = FUNC10(t);
	bool is_struct = FUNC6(t);
	int align, i, packed, off = 0;
	__u16 vlen = FUNC12(t);

	packed = is_struct ? FUNC7(d->btf, id, t) : 0;
	align = packed ? 1 : FUNC1(d->btf, id);

	FUNC4(d, "%s%s%s {",
			is_struct ? "struct" : "union",
			t->name_off ? " " : "",
			FUNC5(d, id));

	for (i = 0; i < vlen; i++, m++) {
		const char *fname;
		int m_off, m_sz;

		fname = FUNC11(d, m->name_off);
		m_sz = FUNC9(t, i);
		m_off = FUNC8(t, i);
		align = packed ? 1 : FUNC1(d->btf, m->type);

		FUNC2(d, off, m_off, m_sz, align, lvl + 1);
		FUNC4(d, "\n%s", FUNC14(lvl + 1));
		FUNC3(d, m->type, fname, lvl + 1);

		if (m_sz) {
			FUNC4(d, ": %d", m_sz);
			off = m_off + m_sz;
		} else {
			m_sz = FUNC13(0, FUNC0(d->btf, m->type));
			off = m_off + m_sz * 8;
		}
		FUNC4(d, ";");
	}

	if (vlen)
		FUNC4(d, "\n");
	FUNC4(d, "%s}", FUNC14(lvl));
	if (packed)
		FUNC4(d, " __attribute__((packed))");
}