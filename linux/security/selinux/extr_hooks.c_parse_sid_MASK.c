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
typedef  int /*<<< orphan*/  u32 ;
struct super_block {TYPE_1__* s_type; int /*<<< orphan*/  s_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  selinux_state ; 

__attribute__((used)) static int FUNC2(struct super_block *sb, const char *s, u32 *sid)
{
	int rc = FUNC1(&selinux_state, s,
					     sid, GFP_KERNEL);
	if (rc)
		FUNC0("SELinux: security_context_str_to_sid"
		       "(%s) failed for (dev %s, type %s) errno=%d\n",
		       s, sb->s_id, sb->s_type->name, rc);
	return rc;
}