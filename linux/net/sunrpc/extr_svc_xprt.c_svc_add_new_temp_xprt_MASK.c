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
struct svc_xprt {int /*<<< orphan*/  xpt_list; int /*<<< orphan*/  xpt_flags; } ;
struct TYPE_2__ {int /*<<< orphan*/ * function; } ;
struct svc_serv {int /*<<< orphan*/  sv_lock; TYPE_1__ sv_temptimer; int /*<<< orphan*/  sv_tmpcnt; int /*<<< orphan*/  sv_tempsocks; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  XPT_TEMP ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * svc_age_temp_xprts ; 
 int svc_conn_age_period ; 
 int /*<<< orphan*/  FUNC5 (struct svc_xprt*) ; 

__attribute__((used)) static void FUNC6(struct svc_serv *serv, struct svc_xprt *newxpt)
{
	FUNC3(&serv->sv_lock);
	FUNC2(XPT_TEMP, &newxpt->xpt_flags);
	FUNC0(&newxpt->xpt_list, &serv->sv_tempsocks);
	serv->sv_tmpcnt++;
	if (serv->sv_temptimer.function == NULL) {
		/* setup timer to age temp transports */
		serv->sv_temptimer.function = svc_age_temp_xprts;
		FUNC1(&serv->sv_temptimer,
			  jiffies + svc_conn_age_period * HZ);
	}
	FUNC4(&serv->sv_lock);
	FUNC5(newxpt);
}