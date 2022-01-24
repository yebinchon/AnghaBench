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
typedef  size_t u32 ;
struct svc_serv {int dummy; } ;
struct rpc_xprt {struct net* xprt_net; } ;
struct nfs_callback_data {int /*<<< orphan*/ * serv; int /*<<< orphan*/  users; } ;
struct net {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct svc_serv*) ; 
 int FUNC1 (struct svc_serv*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct svc_serv* FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (size_t,struct svc_serv*,struct net*) ; 
 struct nfs_callback_data* nfs_callback_info ; 
 int /*<<< orphan*/  nfs_callback_mutex ; 
 int FUNC7 (size_t,struct rpc_xprt*,struct svc_serv*) ; 
 int FUNC8 (size_t,struct svc_serv*,struct net*,struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC9 (struct svc_serv*) ; 

int FUNC10(u32 minorversion, struct rpc_xprt *xprt)
{
	struct svc_serv *serv;
	struct nfs_callback_data *cb_info = &nfs_callback_info[minorversion];
	int ret;
	struct net *net = xprt->xprt_net;

	FUNC3(&nfs_callback_mutex);

	serv = FUNC5(minorversion);
	if (FUNC0(serv)) {
		ret = FUNC1(serv);
		goto err_create;
	}

	ret = FUNC8(minorversion, serv, net, xprt);
	if (ret < 0)
		goto err_net;

	ret = FUNC7(minorversion, xprt, serv);
	if (ret < 0)
		goto err_start;

	cb_info->users++;
	/*
	 * svc_create creates the svc_serv with sv_nrthreads == 1, and then
	 * svc_prepare_thread increments that. So we need to call svc_destroy
	 * on both success and failure so that the refcount is 1 when the
	 * thread exits.
	 */
err_net:
	if (!cb_info->users)
		cb_info->serv = NULL;
	FUNC9(serv);
err_create:
	FUNC4(&nfs_callback_mutex);
	return ret;

err_start:
	FUNC6(minorversion, serv, net);
	FUNC2("NFS: Couldn't create server thread; err = %d\n", ret);
	goto err_net;
}