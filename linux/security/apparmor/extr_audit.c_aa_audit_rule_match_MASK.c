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
struct aa_label {int dummy; } ;
struct aa_audit_rule {int /*<<< orphan*/  label; } ;

/* Variables and functions */
#define  AUDIT_SUBJ_ROLE 130 
#define  Audit_equal 129 
#define  Audit_not_equal 128 
 int ENOENT ; 
 scalar_t__ FUNC0 (struct aa_label*,int /*<<< orphan*/ ) ; 
 struct aa_label* FUNC1 (int) ; 

int FUNC2(u32 sid, u32 field, u32 op, void *vrule)
{
	struct aa_audit_rule *rule = vrule;
	struct aa_label *label;
	int found = 0;

	label = FUNC1(sid);

	if (!label)
		return -ENOENT;

	if (FUNC0(label, rule->label))
		found = 1;

	switch (field) {
	case AUDIT_SUBJ_ROLE:
		switch (op) {
		case Audit_equal:
			return found;
		case Audit_not_equal:
			return !found;
		}
	}
	return 0;
}