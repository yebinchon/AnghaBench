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
struct nfsd_net {TYPE_1__* cld_net; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  cn_tfm; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int ETIMEDOUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct net*) ; 
 int FUNC3 (struct nfsd_net*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 struct nfsd_net* FUNC6 (struct net*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct net*) ; 
 int /*<<< orphan*/  FUNC8 (struct net*) ; 
 int /*<<< orphan*/  FUNC9 (struct nfsd_net*) ; 
 int FUNC10 (struct nfsd_net*) ; 
 int FUNC11 (struct nfsd_net*) ; 
 int /*<<< orphan*/  FUNC12 (struct net*) ; 
 int /*<<< orphan*/  nfsd_net_id ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

__attribute__((used)) static int
FUNC15(struct net *net)
{
	int status;
	struct nfsd_net *nn = FUNC6(net, nfsd_net_id);
	bool running;
	int retries = 10;

	status = FUNC7(net);
	if (status)
		return status;

	status = FUNC2(net);
	if (status)
		goto err_shutdown;
	nn->cld_net->cn_tfm = FUNC4("sha256", 0, 0);
	if (FUNC0(nn->cld_net->cn_tfm)) {
		status = FUNC1(nn->cld_net->cn_tfm);
		goto err_remove;
	}

	/*
	 * rpc pipe upcalls take 30 seconds to time out, so we don't want to
	 * queue an upcall unless we know that nfsdcld is running (because we
	 * want this to fail fast so that nfsd4_client_tracking_init() can try
	 * the next client tracking method).  nfsdcld should already be running
	 * before nfsd is started, so the wait here is for nfsdcld to open the
	 * pipefs file we just created.
	 */
	while (!(running = FUNC3(nn)) && retries--)
		FUNC5(100);

	if (!running) {
		status = -ETIMEDOUT;
		goto err_remove;
	}

	status = FUNC10(nn);
	if (status == -EOPNOTSUPP)
		FUNC13("NFSD: nfsdcld GetVersion upcall failed. Please upgrade nfsdcld.\n");

	status = FUNC11(nn);
	if (status) {
		if (status == -EOPNOTSUPP)
			FUNC13("NFSD: nfsdcld GraceStart upcall failed. Please upgrade nfsdcld.\n");
		FUNC9(nn);
		goto err_remove;
	} else
		FUNC14("NFSD: Using nfsdcld client tracking operations.\n");
	return 0;

err_remove:
	FUNC12(net);
err_shutdown:
	FUNC8(net);
	return status;
}