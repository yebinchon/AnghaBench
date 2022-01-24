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
struct timer_list {int dummy; } ;
struct nfc_llcp_local {int /*<<< orphan*/  sdreq_timeout_work; } ;

/* Variables and functions */
 struct nfc_llcp_local* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct nfc_llcp_local* local ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sdreq_timer ; 

__attribute__((used)) static void FUNC2(struct timer_list *t)
{
	struct nfc_llcp_local *local = FUNC0(local, t, sdreq_timer);

	FUNC1(&local->sdreq_timeout_work);
}