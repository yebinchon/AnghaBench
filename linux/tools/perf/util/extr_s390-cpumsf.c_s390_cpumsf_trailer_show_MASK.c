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
struct hws_trailer_entry {int flags; unsigned long long f; unsigned long long a; unsigned long long t; int bsdes; int overflow; int clock_base; int* progusage; int progusage2; void* dsdes; int /*<<< orphan*/  timestamp; } ;
struct hws_basic_entry {int dummy; } ;
typedef  int /*<<< orphan*/  local ;

/* Variables and functions */
 void* FUNC0 (unsigned long long const) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,char*,size_t,float,char,char,int,void*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hws_trailer_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC6 (struct hws_trailer_entry*,int) ; 

__attribute__((used)) static bool FUNC7(const char *color, size_t pos,
				     struct hws_trailer_entry *te)
{
#if __BYTE_ORDER == __LITTLE_ENDIAN
	struct hws_trailer_entry local;
	const unsigned long long flags = FUNC1(te->flags);

	FUNC4(&local, 0, sizeof(local));
	local.f = flags >> 63 & 0x1;
	local.a = flags >> 62 & 0x1;
	local.t = flags >> 61 & 0x1;
	local.bsdes = FUNC0((flags >> 16 & 0xffff));
	local.dsdes = FUNC0((flags & 0xffff));
	FUNC3(&local.timestamp, te->timestamp, sizeof(te->timestamp));
	local.overflow = FUNC1(te->overflow);
	local.clock_base = FUNC1(te->progusage[0]) >> 63 & 1;
	local.progusage2 = FUNC1(te->progusage2);
	te = &local;
#endif
	if (te->bsdes != sizeof(struct hws_basic_entry)) {
		FUNC5("Invalid AUX trace trailer entry [%#08zx]\n", pos);
		return false;
	}
	FUNC2(stdout, color, "    [%#08zx] Trailer %c%c%c bsdes:%d"
		      " dsdes:%d Overflow:%lld Time:%#llx\n"
		      "\t\tC:%d TOD:%#lx\n",
		      pos,
		      te->f ? 'F' : ' ',
		      te->a ? 'A' : ' ',
		      te->t ? 'T' : ' ',
		      te->bsdes, te->dsdes, te->overflow,
		      FUNC6(te, te->clock_base),
		      te->clock_base, te->progusage2);
	return true;
}