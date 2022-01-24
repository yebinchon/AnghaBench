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
typedef  int /*<<< orphan*/  u32 ;
struct audit_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_FEATURE_CHANGE ; 
 scalar_t__ AUDIT_OFF ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ audit_enabled ; 
 int /*<<< orphan*/ * audit_feature_names ; 
 int /*<<< orphan*/  FUNC1 (struct audit_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct audit_buffer*,char*,int /*<<< orphan*/ ,int,int,int,int,int) ; 
 struct audit_buffer* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct audit_buffer*) ; 

__attribute__((used)) static void FUNC5(int which, u32 old_feature, u32 new_feature,
				     u32 old_lock, u32 new_lock, int res)
{
	struct audit_buffer *ab;

	if (audit_enabled == AUDIT_OFF)
		return;

	ab = FUNC3(FUNC0(), GFP_KERNEL, AUDIT_FEATURE_CHANGE);
	if (!ab)
		return;
	FUNC4(ab);
	FUNC2(ab, " feature=%s old=%u new=%u old_lock=%u new_lock=%u res=%d",
			 audit_feature_names[which], !!old_feature, !!new_feature,
			 !!old_lock, !!new_lock, res);
	FUNC1(ab);
}