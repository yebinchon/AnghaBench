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
struct nfsd_net {int /*<<< orphan*/  rec_file; scalar_t__ in_grace; } ;
struct nfs4_client {int /*<<< orphan*/  cl_flags; int /*<<< orphan*/  cl_name; int /*<<< orphan*/  net; } ;
struct cred {int dummy; } ;

/* Variables and functions */
 int HEXDIR_LEN ; 
 int /*<<< orphan*/  NFSD4_CLIENT_STABLE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,struct nfsd_net*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void FUNC2 (struct nfs4_client*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct nfsd_net* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct cred const*) ; 
 int FUNC8 (struct cred const**) ; 
 int FUNC9 (char*,int,struct nfsd_net*) ; 
 int /*<<< orphan*/  nfsd_net_id ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(struct nfs4_client *clp)
{
	const struct cred *original_cred;
	char dname[HEXDIR_LEN];
	int status;
	struct nfsd_net *nn = FUNC5(clp->net, nfsd_net_id);

	if (!nn->rec_file || !FUNC11(NFSD4_CLIENT_STABLE, &clp->cl_flags))
		return;

	status = FUNC6(dname, &clp->cl_name);
	if (status)
		return FUNC2(clp, status);

	status = FUNC4(nn->rec_file);
	if (status)
		goto out;
	FUNC1(NFSD4_CLIENT_STABLE, &clp->cl_flags);

	status = FUNC8(&original_cred);
	if (status < 0)
		goto out_drop_write;

	status = FUNC9(dname, HEXDIR_LEN-1, nn);
	FUNC7(original_cred);
	if (status == 0) {
		FUNC12(nn->rec_file, 0);
		if (nn->in_grace)
			FUNC0(dname,
					HEXDIR_LEN, nn);
	}
out_drop_write:
	FUNC3(nn->rec_file);
out:
	if (status)
		FUNC10("NFSD: Failed to remove expired client state directory"
				" %.*s\n", HEXDIR_LEN, dname);
}