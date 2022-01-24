#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct smc_link_group {int /*<<< orphan*/  rmbs_lock; int /*<<< orphan*/ * lnk; int /*<<< orphan*/  is_smcd; } ;
struct smc_connection {TYPE_2__* rmb_desc; TYPE_1__* sndbuf_desc; } ;
struct TYPE_5__ {int /*<<< orphan*/  list; scalar_t__ used; int /*<<< orphan*/  regerr; } ;
struct TYPE_4__ {scalar_t__ used; } ;

/* Variables and functions */
 size_t SMC_SINGLE_LINK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct smc_link_group*,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct smc_connection *conn,
			  struct smc_link_group *lgr)
{
	if (conn->sndbuf_desc)
		conn->sndbuf_desc->used = 0;
	if (conn->rmb_desc) {
		if (!conn->rmb_desc->regerr) {
			if (!lgr->is_smcd) {
				/* unregister rmb with peer */
				FUNC2(
						&lgr->lnk[SMC_SINGLE_LINK],
						conn->rmb_desc);
			}
			conn->rmb_desc->used = 0;
		} else {
			/* buf registration failed, reuse not possible */
			FUNC3(&lgr->rmbs_lock);
			FUNC0(&conn->rmb_desc->list);
			FUNC4(&lgr->rmbs_lock);

			FUNC1(lgr, true, conn->rmb_desc);
		}
	}
}