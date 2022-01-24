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
struct TYPE_2__ {int /*<<< orphan*/  (* unlock ) (struct strparser*) ;int /*<<< orphan*/  (* lock ) (struct strparser*) ;} ;
struct strparser {TYPE_1__ cb; int /*<<< orphan*/  work; scalar_t__ paused; int /*<<< orphan*/  stopped; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct strparser*) ; 
 int /*<<< orphan*/  strp_wq ; 
 int /*<<< orphan*/  FUNC2 (struct strparser*) ; 
 int /*<<< orphan*/  FUNC3 (struct strparser*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct strparser *strp)
{
	/* We need the read lock to synchronize with strp_data_ready. We
	 * need the socket lock for calling strp_read_sock.
	 */
	strp->cb.lock(strp);

	if (FUNC4(strp->stopped))
		goto out;

	if (strp->paused)
		goto out;

	if (FUNC1(strp) == -ENOMEM)
		FUNC0(strp_wq, &strp->work);

out:
	strp->cb.unlock(strp);
}