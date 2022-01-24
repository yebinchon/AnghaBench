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
struct section {int /*<<< orphan*/  rela_hash; int /*<<< orphan*/  rela_list; scalar_t__ sym; TYPE_1__* data; int /*<<< orphan*/  name; } ;
struct rela {unsigned long addend; unsigned int offset; int /*<<< orphan*/  hash; int /*<<< orphan*/  list; int /*<<< orphan*/  type; scalar_t__ sym; } ;
struct orc_entry {int dummy; } ;
struct TYPE_2__ {scalar_t__ d_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  R_X86_64_PC32 ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct rela* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct orc_entry*,struct orc_entry*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rela*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(struct section *u_sec, struct section *ip_relasec,
				unsigned int idx, struct section *insn_sec,
				unsigned long insn_off, struct orc_entry *o)
{
	struct orc_entry *orc;
	struct rela *rela;

	if (!insn_sec->sym) {
		FUNC0("missing symbol for section %s", insn_sec->name);
		return -1;
	}

	/* populate ORC data */
	orc = (struct orc_entry *)u_sec->data->d_buf + idx;
	FUNC4(orc, o, sizeof(*orc));

	/* populate rela for ip */
	rela = FUNC3(sizeof(*rela));
	if (!rela) {
		FUNC6("malloc");
		return -1;
	}
	FUNC5(rela, 0, sizeof(*rela));

	rela->sym = insn_sec->sym;
	rela->addend = insn_off;
	rela->type = R_X86_64_PC32;
	rela->offset = idx * sizeof(int);

	FUNC2(&rela->list, &ip_relasec->rela_list);
	FUNC1(ip_relasec->rela_hash, &rela->hash, rela->offset);

	return 0;
}