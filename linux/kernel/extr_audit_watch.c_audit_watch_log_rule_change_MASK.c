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
struct audit_watch {int /*<<< orphan*/  path; } ;
struct audit_krule {char* listnr; int /*<<< orphan*/  filterkey; } ;
struct audit_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_CONFIG_CHANGE ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  audit_enabled ; 
 int /*<<< orphan*/  FUNC1 (struct audit_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct audit_buffer*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct audit_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct audit_buffer*) ; 
 struct audit_buffer* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct audit_buffer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct audit_krule *r, struct audit_watch *w, char *op)
{
	struct audit_buffer *ab;

	if (!audit_enabled)
		return;
	ab = FUNC5(FUNC0(), GFP_NOFS, AUDIT_CONFIG_CHANGE);
	if (!ab)
		return;
	FUNC4(ab);
	FUNC2(ab, "op=%s path=", op);
	FUNC6(ab, w->path);
	FUNC3(ab, r->filterkey);
	FUNC2(ab, " list=%d res=1", r->listnr);
	FUNC1(ab);
}