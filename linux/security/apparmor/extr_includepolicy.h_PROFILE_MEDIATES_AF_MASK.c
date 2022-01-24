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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int /*<<< orphan*/  dfa; } ;
struct aa_profile {TYPE_1__ policy; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  AA_CLASS_NET ; 
 unsigned int FUNC0 (struct aa_profile*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,unsigned int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline unsigned int FUNC3(struct aa_profile *profile,
					       u16 AF) {
	unsigned int state = FUNC0(profile, AA_CLASS_NET);
	__be16 be_af = FUNC2(AF);

	if (!state)
		return 0;
	return FUNC1(profile->policy.dfa, state, (char *) &be_af, 2);
}