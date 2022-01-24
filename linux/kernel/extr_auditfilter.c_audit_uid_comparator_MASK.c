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
typedef  int /*<<< orphan*/  kuid_t ;

/* Variables and functions */
#define  Audit_bitmask 135 
#define  Audit_bittest 134 
#define  Audit_equal 133 
#define  Audit_ge 132 
#define  Audit_gt 131 
#define  Audit_le 130 
#define  Audit_lt 129 
#define  Audit_not_equal 128 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(kuid_t left, u32 op, kuid_t right)
{
	switch (op) {
	case Audit_equal:
		return FUNC0(left, right);
	case Audit_not_equal:
		return !FUNC0(left, right);
	case Audit_lt:
		return FUNC3(left, right);
	case Audit_le:
		return FUNC4(left, right);
	case Audit_gt:
		return FUNC1(left, right);
	case Audit_ge:
		return FUNC2(left, right);
	case Audit_bitmask:
	case Audit_bittest:
	default:
		return 0;
	}
}