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
struct cf_trailer_entry {void* mach_type; void* tod_base; void* progusage3; void* progusage2; void* progusage1; void* timestamp; void* cpu_speed; void* csvn; void* cfvn; scalar_t__ lcda; scalar_t__ caca; scalar_t__ mtda; scalar_t__ speed; scalar_t__ clock_base; void* res2; void* res1; void* flags; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 void* FUNC1 (void*) ; 
 void* FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,char*,size_t,char,char,char,char,...) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC4(const char *color, size_t offset,
				    struct cf_trailer_entry *tep)
{
	struct cf_trailer_entry  te;

	te.flags = FUNC2(tep->flags);
	te.cfvn = FUNC0(tep->cfvn);
	te.csvn = FUNC0(tep->csvn);
	te.cpu_speed = FUNC1(tep->cpu_speed);
	te.timestamp = FUNC2(tep->timestamp);
	te.progusage1 = FUNC2(tep->progusage1);
	te.progusage2 = FUNC2(tep->progusage2);
	te.progusage3 = FUNC2(tep->progusage3);
	te.tod_base = FUNC2(tep->tod_base);
	te.mach_type = FUNC0(tep->mach_type);
	te.res1 = FUNC0(tep->res1);
	te.res2 = FUNC1(tep->res2);

	FUNC3(stdout, color, "    [%#08zx] Trailer:%c%c%c%c%c"
		      " Cfvn:%d Csvn:%d Speed:%d TOD:%#llx\n",
		      offset, te.clock_base ? 'T' : ' ',
		      te.speed ? 'S' : ' ', te.mtda ? 'M' : ' ',
		      te.caca ? 'C' : ' ', te.lcda ? 'L' : ' ',
		      te.cfvn, te.csvn, te.cpu_speed, te.timestamp);
	FUNC3(stdout, color, "\t\t1:%lx 2:%lx 3:%lx TOD-Base:%#llx"
		      " Type:%x\n\n",
		      te.progusage1, te.progusage2, te.progusage3,
		      te.tod_base, te.mach_type);
}