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
typedef  int u64 ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {int skbmark; int skbmarkmask; int /*<<< orphan*/  skbqueue; int /*<<< orphan*/  skbprio; } ;
struct ip_set_ext {TYPE_1__ skbinfo; int /*<<< orphan*/  comment; void* packets; void* bytes; int /*<<< orphan*/  timeout; } ;
struct ip_set {int dummy; } ;

/* Variables and functions */
 size_t IPSET_ATTR_BYTES ; 
 size_t IPSET_ATTR_COMMENT ; 
 size_t IPSET_ATTR_PACKETS ; 
 size_t IPSET_ATTR_SKBMARK ; 
 size_t IPSET_ATTR_SKBPRIO ; 
 size_t IPSET_ATTR_SKBQUEUE ; 
 size_t IPSET_ATTR_TIMEOUT ; 
 int IPSET_ERR_COMMENT ; 
 int IPSET_ERR_COUNTER ; 
 int IPSET_ERR_PROTOCOL ; 
 int IPSET_ERR_SKBINFO ; 
 int IPSET_ERR_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct ip_set*) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_set*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_set*) ; 
 int /*<<< orphan*/  FUNC3 (struct ip_set*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC8 (struct nlattr**,size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC10 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC11 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC12 (struct nlattr*) ; 
 scalar_t__ FUNC13 (int) ; 

int
FUNC14(struct ip_set *set, struct nlattr *tb[],
		      struct ip_set_ext *ext)
{
	u64 fullmark;

	if (FUNC13(!FUNC8(tb, IPSET_ATTR_TIMEOUT) ||
		     !FUNC8(tb, IPSET_ATTR_PACKETS) ||
		     !FUNC8(tb, IPSET_ATTR_BYTES) ||
		     !FUNC8(tb, IPSET_ATTR_SKBMARK) ||
		     !FUNC8(tb, IPSET_ATTR_SKBPRIO) ||
		     !FUNC8(tb, IPSET_ATTR_SKBQUEUE)))
		return -IPSET_ERR_PROTOCOL;

	if (tb[IPSET_ATTR_TIMEOUT]) {
		if (!FUNC3(set))
			return -IPSET_ERR_TIMEOUT;
		ext->timeout = FUNC9(tb[IPSET_ATTR_TIMEOUT]);
	}
	if (tb[IPSET_ATTR_BYTES] || tb[IPSET_ATTR_PACKETS]) {
		if (!FUNC1(set))
			return -IPSET_ERR_COUNTER;
		if (tb[IPSET_ATTR_BYTES])
			ext->bytes = FUNC6(FUNC12(
						 tb[IPSET_ATTR_BYTES]));
		if (tb[IPSET_ATTR_PACKETS])
			ext->packets = FUNC6(FUNC12(
						   tb[IPSET_ATTR_PACKETS]));
	}
	if (tb[IPSET_ATTR_COMMENT]) {
		if (!FUNC0(set))
			return -IPSET_ERR_COMMENT;
		ext->comment = FUNC7(tb[IPSET_ATTR_COMMENT]);
	}
	if (tb[IPSET_ATTR_SKBMARK]) {
		if (!FUNC2(set))
			return -IPSET_ERR_SKBINFO;
		fullmark = FUNC6(FUNC12(tb[IPSET_ATTR_SKBMARK]));
		ext->skbinfo.skbmark = fullmark >> 32;
		ext->skbinfo.skbmarkmask = fullmark & 0xffffffff;
	}
	if (tb[IPSET_ATTR_SKBPRIO]) {
		if (!FUNC2(set))
			return -IPSET_ERR_SKBINFO;
		ext->skbinfo.skbprio =
			FUNC5(FUNC11(tb[IPSET_ATTR_SKBPRIO]));
	}
	if (tb[IPSET_ATTR_SKBQUEUE]) {
		if (!FUNC2(set))
			return -IPSET_ERR_SKBINFO;
		ext->skbinfo.skbqueue =
			FUNC4(FUNC10(tb[IPSET_ATTR_SKBQUEUE]));
	}
	return 0;
}