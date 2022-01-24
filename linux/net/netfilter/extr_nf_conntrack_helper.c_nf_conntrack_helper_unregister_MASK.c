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
struct nf_conntrack_helper {int /*<<< orphan*/  hnode; } ;

/* Variables and functions */
 int /*<<< orphan*/  expect_iter_me ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nf_ct_helper_count ; 
 int /*<<< orphan*/  nf_ct_helper_mutex ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct nf_conntrack_helper*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  unhelp ; 

void FUNC6(struct nf_conntrack_helper *me)
{
	FUNC1(&nf_ct_helper_mutex);
	FUNC0(&me->hnode);
	nf_ct_helper_count--;
	FUNC2(&nf_ct_helper_mutex);

	/* Make sure every nothing is still using the helper unless its a
	 * connection in the hash.
	 */
	FUNC5();

	FUNC3(expect_iter_me, NULL);
	FUNC4(unhelp, me);

	/* Maybe someone has gotten the helper already when unhelp above.
	 * So need to wait it.
	 */
	FUNC5();
}