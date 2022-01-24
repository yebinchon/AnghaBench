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
struct super_block {int dummy; } ;
struct rpc_clnt {int dummy; } ;
struct rpc_auth_create_args {char const* target_name; int /*<<< orphan*/  pseudoflavor; } ;
struct rpc_auth {int dummy; } ;
struct net {int dummy; } ;
typedef  int /*<<< orphan*/  rpc_authflavor_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rpc_auth*) ; 
 int FUNC1 (struct rpc_auth*) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_clnt*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rpc_clnt*) ; 
 int /*<<< orphan*/  FUNC5 (struct rpc_clnt*) ; 
 struct super_block* FUNC6 (struct net*) ; 
 struct net* FUNC7 (struct rpc_clnt*) ; 
 int /*<<< orphan*/  FUNC8 (struct net*) ; 
 int /*<<< orphan*/  FUNC9 (struct rpc_clnt*) ; 
 int FUNC10 (struct super_block*,struct rpc_clnt*) ; 
 int /*<<< orphan*/  FUNC11 (struct rpc_clnt*) ; 
 struct rpc_auth* FUNC12 (struct rpc_auth_create_args*,struct rpc_clnt*) ; 

__attribute__((used)) static int FUNC13(struct rpc_clnt *clnt,
			       rpc_authflavor_t pseudoflavor,
			       const char *client_name)
{
	struct rpc_auth_create_args auth_args = {
		.pseudoflavor = pseudoflavor,
		.target_name = client_name,
	};
	struct rpc_auth *auth;
	struct net *net = FUNC7(clnt);
	struct super_block *pipefs_sb;
	int err;

	FUNC4(clnt);

	pipefs_sb = FUNC6(net);
	if (pipefs_sb) {
		err = FUNC10(pipefs_sb, clnt);
		if (err)
			goto out;
	}

	FUNC9(clnt);
	if (pipefs_sb)
		FUNC8(net);

	auth = FUNC12(&auth_args, clnt);
	if (FUNC0(auth)) {
		FUNC3("RPC:       Couldn't create auth handle (flavor %u)\n",
				pseudoflavor);
		err = FUNC1(auth);
		goto err_auth;
	}
	return 0;
err_auth:
	pipefs_sb = FUNC6(net);
	FUNC11(clnt);
	FUNC2(clnt);
out:
	if (pipefs_sb)
		FUNC8(net);
	FUNC5(clnt);
	return err;
}