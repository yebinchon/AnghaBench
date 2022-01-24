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
struct common_audit_data {int dummy; } ;
struct audit_buffer {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  peer; int /*<<< orphan*/  label; scalar_t__ denied; scalar_t__ request; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLAGS_NONE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  PERMS_CHRS_MASK ; 
 int /*<<< orphan*/  PERMS_NAMES_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct audit_buffer*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aa_file_perm_chrs ; 
 int /*<<< orphan*/  aa_file_perm_names ; 
 int /*<<< orphan*/  FUNC1 (struct audit_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct common_audit_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct audit_buffer*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct audit_buffer *ab, void *va)
{
	struct common_audit_data *sa = va;

	if (FUNC2(sa)->request) {
		FUNC3(ab, " requested_mask=");
		FUNC0(ab, FUNC2(sa)->request, aa_file_perm_chrs,
				   PERMS_CHRS_MASK, aa_file_perm_names,
				   PERMS_NAMES_MASK);
	}
	if (FUNC2(sa)->denied) {
		FUNC3(ab, "denied_mask=");
		FUNC0(ab, FUNC2(sa)->denied, aa_file_perm_chrs,
				   PERMS_CHRS_MASK, aa_file_perm_names,
				   PERMS_NAMES_MASK);
	}
	FUNC3(ab, " peer=");
	FUNC1(ab, FUNC4(FUNC2(sa)->label), FUNC2(sa)->peer,
				      FLAGS_NONE, GFP_ATOMIC);
}