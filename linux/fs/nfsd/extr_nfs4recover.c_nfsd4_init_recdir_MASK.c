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
struct nfsd_net {int in_grace; int /*<<< orphan*/ * rec_file; } ;
struct net {int dummy; } ;
struct cred {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int O_DIRECTORY ; 
 int O_RDONLY ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 struct nfsd_net* FUNC4 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cred const*) ; 
 int FUNC6 (struct cred const**) ; 
 int /*<<< orphan*/  nfsd_net_id ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int user_recovery_dirname ; 

__attribute__((used)) static int
FUNC8(struct net *net)
{
	struct nfsd_net *nn = FUNC4(net, nfsd_net_id);
	const struct cred *original_cred;
	int status;

	FUNC7("NFSD: Using %s as the NFSv4 state recovery directory\n",
			user_recovery_dirname);

	FUNC0(nn->rec_file);

	status = FUNC6(&original_cred);
	if (status < 0) {
		FUNC7("NFSD: Unable to change credentials to find recovery"
		       " directory: error %d\n",
		       status);
		return status;
	}

	nn->rec_file = FUNC3(user_recovery_dirname, O_RDONLY | O_DIRECTORY, 0);
	if (FUNC1(nn->rec_file)) {
		FUNC7("NFSD: unable to find recovery directory %s\n",
				user_recovery_dirname);
		status = FUNC2(nn->rec_file);
		nn->rec_file = NULL;
	}

	FUNC5(original_cred);
	if (!status)
		nn->in_grace = true;
	return status;
}