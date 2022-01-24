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
struct nfs_openres {int rflags; } ;
struct nfs4_opendata {int /*<<< orphan*/  f_attr; int /*<<< orphan*/  rpc_done; struct nfs_openres o_res; int /*<<< orphan*/  dir; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int NFS4_OPEN_RESULT_CONFIRM ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int FUNC1 (struct nfs4_opendata*) ; 
 struct inode* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nfs4_opendata*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct nfs4_opendata *data)
{
	struct inode *dir = FUNC2(data->dir);
	struct nfs_openres *o_res = &data->o_res;
	int status;

	status = FUNC3(data, NULL);
	if (status != 0 || !data->rpc_done)
		return status;

	FUNC4(FUNC0(dir), &data->f_attr);

	if (o_res->rflags & NFS4_OPEN_RESULT_CONFIRM)
		status = FUNC1(data);

	return status;
}