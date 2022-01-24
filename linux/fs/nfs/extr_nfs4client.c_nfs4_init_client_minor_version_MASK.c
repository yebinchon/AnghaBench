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
struct nfs_client {TYPE_1__* cl_mvops; } ;
struct TYPE_2__ {int (* init_client ) (struct nfs_client*) ;} ;

/* Variables and functions */
 int FUNC0 (struct nfs_client*) ; 
 int FUNC1 (struct nfs_client*) ; 

__attribute__((used)) static int FUNC2(struct nfs_client *clp)
{
	int ret;

	ret = clp->cl_mvops->init_client(clp);
	if (ret)
		return ret;
	return FUNC0(clp);
}