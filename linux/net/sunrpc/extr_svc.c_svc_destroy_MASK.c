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
struct svc_serv {scalar_t__ sv_nrthreads; struct svc_serv* sv_pools; int /*<<< orphan*/  sv_tempsocks; int /*<<< orphan*/  sv_permsocks; int /*<<< orphan*/  sv_temptimer; TYPE_1__* sv_program; } ;
struct TYPE_2__ {int /*<<< orphan*/  pg_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct svc_serv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct svc_serv*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct svc_serv*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (struct svc_serv*) ; 
 int /*<<< orphan*/  FUNC9 (struct svc_serv*) ; 

void
FUNC10(struct svc_serv *serv)
{
	FUNC3("svc: svc_destroy(%s, %d)\n",
				serv->sv_program->pg_name,
				serv->sv_nrthreads);

	if (serv->sv_nrthreads) {
		if (--(serv->sv_nrthreads) != 0) {
			FUNC9(serv);
			return;
		}
	} else
		FUNC6("svc_destroy: no threads for serv=%p!\n", serv);

	FUNC2(&serv->sv_temptimer);

	/*
	 * The last user is gone and thus all sockets have to be destroyed to
	 * the point. Check this.
	 */
	FUNC0(!FUNC5(&serv->sv_permsocks));
	FUNC0(!FUNC5(&serv->sv_tempsocks));

	FUNC1(serv);

	if (FUNC8(serv))
		FUNC7();

	FUNC4(serv->sv_pools);
	FUNC4(serv);
}