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
union kvm_mmu_page_role {int word; size_t access; scalar_t__ smm; scalar_t__ smap_and_not_wp; scalar_t__ smep_and_not_wp; scalar_t__ cr0_wp; scalar_t__ nxe; scalar_t__ cr4_pae; scalar_t__ invalid; scalar_t__ direct; int /*<<< orphan*/  quadrant; int /*<<< orphan*/  level; } ;
struct trace_seq {int dummy; } ;
struct tep_record {int dummy; } ;
struct tep_event {int /*<<< orphan*/  tep; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct trace_seq*,struct tep_event*,char*,struct tep_record*,unsigned long long*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct trace_seq*,char*,struct tep_event*,char*,struct tep_record*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct trace_seq*,char*,...) ; 

__attribute__((used)) static int FUNC5(struct trace_seq *s, struct tep_record *record,
			      struct tep_event *event, void *context)
{
	unsigned long long val;
	static const char *access_str[] = {
		"---", "--x", "w--", "w-x", "-u-", "-ux", "wu-", "wux"
	};
	union kvm_mmu_page_role role;

	if (FUNC0(s, event, "role", record, &val, 1) < 0)
		return -1;

	role.word = (int)val;

	/*
	 * We can only use the structure if file is of the same
	 * endianness.
	 */
	if (FUNC1(event->tep) ==
	    FUNC2(event->tep)) {

		FUNC4(s, "%u q%u%s %s%s %spae %snxe %swp%s%s%s",
				 role.level,
				 role.quadrant,
				 role.direct ? " direct" : "",
				 access_str[role.access],
				 role.invalid ? " invalid" : "",
				 role.cr4_pae ? "" : "!",
				 role.nxe ? "" : "!",
				 role.cr0_wp ? "" : "!",
				 role.smep_and_not_wp ? " smep" : "",
				 role.smap_and_not_wp ? " smap" : "",
				 role.smm ? " smm" : "");
	} else
		FUNC4(s, "WORD: %08x", role.word);

	FUNC3(s, " root %u ",  event,
			    "root_count", record, 1);

	if (FUNC0(s, event, "unsync", record, &val, 1) < 0)
		return -1;

	FUNC4(s, "%s%c",  val ? "unsync" : "sync", 0);
	return 0;
}