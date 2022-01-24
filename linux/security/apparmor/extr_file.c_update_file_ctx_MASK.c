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
struct aa_label {int dummy; } ;
struct aa_file_ctx {int /*<<< orphan*/  lock; int /*<<< orphan*/  allow; int /*<<< orphan*/  label; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct aa_label* FUNC0 (struct aa_label*,struct aa_label*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct aa_label*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct aa_label*) ; 
 struct aa_label* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct aa_file_ctx *fctx, struct aa_label *label,
			    u32 request)
{
	struct aa_label *l, *old;

	/* update caching of label on file_ctx */
	FUNC5(&fctx->lock);
	old = FUNC4(fctx->label,
					FUNC2(&fctx->lock));
	l = FUNC0(old, label, GFP_ATOMIC);
	if (l) {
		if (l != old) {
			FUNC3(fctx->label, l);
			FUNC1(old);
		} else
			FUNC1(l);
		fctx->allow |= request;
	}
	FUNC6(&fctx->lock);
}