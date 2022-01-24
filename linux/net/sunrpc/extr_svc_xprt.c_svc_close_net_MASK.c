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
struct svc_serv {int /*<<< orphan*/  sv_tempsocks; int /*<<< orphan*/  sv_permsocks; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct svc_serv*,struct net*) ; 
 scalar_t__ FUNC2 (struct svc_serv*,int /*<<< orphan*/ *,struct net*) ; 

void FUNC3(struct svc_serv *serv, struct net *net)
{
	int delay = 0;

	while (FUNC2(serv, &serv->sv_permsocks, net) +
	       FUNC2(serv, &serv->sv_tempsocks, net)) {

		FUNC1(serv, net);
		FUNC0(delay++);
	}
}