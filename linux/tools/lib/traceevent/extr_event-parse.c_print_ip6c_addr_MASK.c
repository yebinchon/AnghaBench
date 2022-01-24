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
typedef  int /*<<< orphan*/  zerolength ;
typedef  int uint8_t ;
typedef  int uint16_t ;
struct trace_seq {int dummy; } ;
struct in6_addr {scalar_t__* s6_addr16; int /*<<< orphan*/ * s6_addr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct in6_addr*) ; 
 scalar_t__ FUNC1 (struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC2 (struct in6_addr*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct trace_seq*,char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct trace_seq*,char*,...) ; 

__attribute__((used)) static void FUNC7(struct trace_seq *s, unsigned char *addr)
{
	int i, j, range;
	unsigned char zerolength[8];
	int longest = 1;
	int colonpos = -1;
	uint16_t word;
	uint8_t hi, lo;
	bool needcolon = false;
	bool useIPv4;
	struct in6_addr in6;

	FUNC2(&in6, addr, sizeof(struct in6_addr));

	useIPv4 = FUNC1(&in6) || FUNC0(&in6);

	FUNC3(zerolength, 0, sizeof(zerolength));

	if (useIPv4)
		range = 6;
	else
		range = 8;

	/* find position of longest 0 run */
	for (i = 0; i < range; i++) {
		for (j = i; j < range; j++) {
			if (in6.s6_addr16[j] != 0)
				break;
			zerolength[i]++;
		}
	}
	for (i = 0; i < range; i++) {
		if (zerolength[i] > longest) {
			longest = zerolength[i];
			colonpos = i;
		}
	}
	if (longest == 1)		/* don't compress a single 0 */
		colonpos = -1;

	/* emit address */
	for (i = 0; i < range; i++) {
		if (i == colonpos) {
			if (needcolon || i == 0)
				FUNC6(s, ":");
			FUNC6(s, ":");
			needcolon = false;
			i += longest - 1;
			continue;
		}
		if (needcolon) {
			FUNC6(s, ":");
			needcolon = false;
		}
		/* hex u16 without leading 0s */
		word = FUNC4(in6.s6_addr16[i]);
		hi = word >> 8;
		lo = word & 0xff;
		if (hi)
			FUNC6(s, "%x%02x", hi, lo);
		else
			FUNC6(s, "%x", lo);

		needcolon = true;
	}

	if (useIPv4) {
		if (needcolon)
			FUNC6(s, ":");
		FUNC5(s, 'I', &in6.s6_addr[12]);
	}

	return;
}