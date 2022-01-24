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
struct svc_serv {TYPE_1__* sv_ops; } ;
struct nfs_callback_data {scalar_t__ users; struct svc_serv* serv; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* svo_setup ) (struct svc_serv*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,struct svc_serv*,struct net*) ; 
 struct nfs_callback_data* nfs_callback_info ; 
 int /*<<< orphan*/  nfs_callback_mutex ; 
 int /*<<< orphan*/  FUNC4 (struct svc_serv*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct svc_serv*) ; 
 int /*<<< orphan*/  FUNC6 (struct svc_serv*) ; 

void FUNC7(int minorversion, struct net *net)
{
	struct nfs_callback_data *cb_info = &nfs_callback_info[minorversion];
	struct svc_serv *serv;

	FUNC1(&nfs_callback_mutex);
	serv = cb_info->serv;
	FUNC3(minorversion, serv, net);
	cb_info->users--;
	if (cb_info->users == 0) {
		FUNC6(serv);
		serv->sv_ops->svo_setup(serv, NULL, 0);
		FUNC5(serv);
		FUNC0("nfs_callback_down: service destroyed\n");
		cb_info->serv = NULL;
	}
	FUNC2(&nfs_callback_mutex);
}