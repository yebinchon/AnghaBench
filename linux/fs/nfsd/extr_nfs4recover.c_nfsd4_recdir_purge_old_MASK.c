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
struct nfsd_net {int in_grace; int /*<<< orphan*/  rec_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfsd_net*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct nfsd_net*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  purge_old ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct nfsd_net *nn)
{
	int status;

	nn->in_grace = false;
	if (!nn->rec_file)
		return;
	status = FUNC1(nn->rec_file);
	if (status)
		goto out;
	status = FUNC3(purge_old, nn);
	if (status == 0)
		FUNC5(nn->rec_file, 0);
	FUNC0(nn->rec_file);
out:
	FUNC2(nn);
	if (status)
		FUNC4("nfsd4: failed to purge old clients from recovery"
			" directory %pD\n", nn->rec_file);
}