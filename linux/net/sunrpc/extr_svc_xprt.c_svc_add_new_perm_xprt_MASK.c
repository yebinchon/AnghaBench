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
struct svc_xprt {int /*<<< orphan*/  xpt_list; int /*<<< orphan*/  xpt_flags; } ;
struct svc_serv {int /*<<< orphan*/  sv_lock; int /*<<< orphan*/  sv_permsocks; } ;

/* Variables and functions */
 int /*<<< orphan*/  XPT_TEMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct svc_xprt*) ; 

void FUNC5(struct svc_serv *serv, struct svc_xprt *new)
{
	FUNC0(XPT_TEMP, &new->xpt_flags);
	FUNC2(&serv->sv_lock);
	FUNC1(&new->xpt_list, &serv->sv_permsocks);
	FUNC3(&serv->sv_lock);
	FUNC4(new);
}