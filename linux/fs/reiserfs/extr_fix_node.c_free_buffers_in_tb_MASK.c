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
struct tree_balance {int /*<<< orphan*/ ** CFR; int /*<<< orphan*/ ** CFL; int /*<<< orphan*/ ** FR; int /*<<< orphan*/ ** FL; int /*<<< orphan*/ ** R; int /*<<< orphan*/ ** L; int /*<<< orphan*/  tb_path; } ;

/* Variables and functions */
 int MAX_HEIGHT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct tree_balance *tb)
{
	int i;

	FUNC1(tb->tb_path);

	for (i = 0; i < MAX_HEIGHT; i++) {
		FUNC0(tb->L[i]);
		FUNC0(tb->R[i]);
		FUNC0(tb->FL[i]);
		FUNC0(tb->FR[i]);
		FUNC0(tb->CFL[i]);
		FUNC0(tb->CFR[i]);

		tb->L[i] = NULL;
		tb->R[i] = NULL;
		tb->FL[i] = NULL;
		tb->FR[i] = NULL;
		tb->CFL[i] = NULL;
		tb->CFR[i] = NULL;
	}
}