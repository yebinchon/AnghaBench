#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ksym {int /*<<< orphan*/  name; } ;
struct ipcount {int dummy; } ;
typedef  scalar_t__ __u64 ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_3__ {int /*<<< orphan*/  count; scalar_t__ ip; } ;

/* Variables and functions */
 int MAX_IPS ; 
 scalar_t__ PAGE_OFFSET ; 
 scalar_t__ FUNC0 (int,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  count_cmp ; 
 TYPE_1__* counts ; 
 struct ksym* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(int fd)
{
	struct ksym *sym;
	__u64 key, next_key;
	__u32 value;
	int i, max;

	FUNC3("%-19s %-32s %s\n", "ADDR", "KSYM", "COUNT");

	/* fetch IPs and counts */
	key = 0, i = 0;
	while (FUNC0(fd, &key, &next_key) == 0) {
		FUNC1(fd, &next_key, &value);
		counts[i].ip = next_key;
		counts[i++].count = value;
		key = next_key;
	}
	max = i;

	/* sort and print */
	FUNC4(counts, max, sizeof(struct ipcount), count_cmp);
	for (i = 0; i < max; i++) {
		if (counts[i].ip > PAGE_OFFSET) {
			sym = FUNC2(counts[i].ip);
			if (!sym) {
				FUNC3("ksym not found. Is kallsyms loaded?\n");
				continue;
			}

			FUNC3("0x%-17llx %-32s %u\n", counts[i].ip, sym->name,
			       counts[i].count);
		} else {
			FUNC3("0x%-17llx %-32s %u\n", counts[i].ip, "(user)",
			       counts[i].count);
		}
	}

	if (max == MAX_IPS) {
		FUNC3("WARNING: IP hash was full (max %d entries); ", max);
		FUNC3("may have dropped samples\n");
	}
}