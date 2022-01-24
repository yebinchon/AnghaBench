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
struct aa_perms {int /*<<< orphan*/  xindex; int /*<<< orphan*/  quiet; int /*<<< orphan*/  audit; int /*<<< orphan*/  allow; } ;
struct aa_dfa {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aa_dfa*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct aa_dfa*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct aa_dfa*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct aa_dfa*,unsigned int) ; 

__attribute__((used)) static struct aa_perms FUNC4(struct aa_dfa *dfa,
					   unsigned int state)
{
	struct aa_perms perms = {
		.allow = FUNC0(dfa, state),
		.audit = FUNC1(dfa, state),
		.quiet = FUNC2(dfa, state),
		.xindex = FUNC3(dfa, state),
	};

	return perms;
}