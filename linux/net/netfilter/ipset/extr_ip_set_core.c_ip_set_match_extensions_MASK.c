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
typedef  int u32 ;
struct ip_set_ext {int /*<<< orphan*/  bytes_op; int /*<<< orphan*/  bytes; int /*<<< orphan*/  packets_op; int /*<<< orphan*/  packets; } ;
struct ip_set_counter {int dummy; } ;
struct ip_set {int dummy; } ;

/* Variables and functions */
 int IPSET_FLAG_MATCH_COUNTERS ; 
 scalar_t__ FUNC0 (struct ip_set*) ; 
 scalar_t__ FUNC1 (struct ip_set*) ; 
 scalar_t__ FUNC2 (struct ip_set*) ; 
 struct ip_set_counter* FUNC3 (void*,struct ip_set*) ; 
 int /*<<< orphan*/  FUNC4 (void*,struct ip_set*) ; 
 int /*<<< orphan*/  FUNC5 (void*,struct ip_set*) ; 
 int /*<<< orphan*/  FUNC6 (struct ip_set_counter*) ; 
 int /*<<< orphan*/  FUNC7 (struct ip_set_counter*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct ip_set_ext const*,struct ip_set_ext*,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ip_set_counter*,struct ip_set_ext const*,int) ; 

bool
FUNC12(struct ip_set *set, const struct ip_set_ext *ext,
			struct ip_set_ext *mext, u32 flags, void *data)
{
	if (FUNC2(set) &&
	    FUNC10(FUNC5(data, set)))
		return false;
	if (FUNC0(set)) {
		struct ip_set_counter *counter = FUNC3(data, set);

		if (flags & IPSET_FLAG_MATCH_COUNTERS &&
		    !(FUNC9(FUNC7(counter),
				mext->packets, mext->packets_op) &&
		      FUNC9(FUNC6(counter),
				mext->bytes, mext->bytes_op)))
			return false;
		FUNC11(counter, ext, flags);
	}
	if (FUNC1(set))
		FUNC8(FUNC4(data, set),
				   ext, mext, flags);
	return true;
}