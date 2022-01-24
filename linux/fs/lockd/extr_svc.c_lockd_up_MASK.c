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
struct svc_serv {int dummy; } ;
struct net {int dummy; } ;
struct cred {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct svc_serv*) ; 
 int FUNC1 (struct svc_serv*) ; 
 struct svc_serv* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct svc_serv*,struct net*) ; 
 int FUNC4 (struct svc_serv*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (struct svc_serv*,struct net*,struct cred const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nlmsvc_mutex ; 
 int /*<<< orphan*/  nlmsvc_users ; 
 int /*<<< orphan*/  FUNC9 (struct svc_serv*) ; 

int FUNC10(struct net *net, const struct cred *cred)
{
	struct svc_serv *serv;
	int error;

	FUNC7(&nlmsvc_mutex);

	serv = FUNC2();
	if (FUNC0(serv)) {
		error = FUNC1(serv);
		goto err_create;
	}

	error = FUNC6(serv, net, cred);
	if (error < 0) {
		FUNC5();
		goto err_put;
	}

	error = FUNC4(serv);
	if (error < 0) {
		FUNC3(serv, net);
		goto err_put;
	}
	nlmsvc_users++;
	/*
	 * Note: svc_serv structures have an initial use count of 1,
	 * so we exit through here on both success and failure.
	 */
err_put:
	FUNC9(serv);
err_create:
	FUNC8(&nlmsvc_mutex);
	return error;
}