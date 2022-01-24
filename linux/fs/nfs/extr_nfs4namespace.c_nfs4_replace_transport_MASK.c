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
struct nfs_server {int dummy; } ;
struct nfs4_fs_locations {int nlocations; struct nfs4_fs_location* locations; } ;
struct TYPE_2__ {scalar_t__ ncomponents; } ;
struct nfs4_fs_location {scalar_t__ nservers; TYPE_1__ rootpath; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_USER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int FUNC2 (struct nfs_server*,char*,char*,struct nfs4_fs_location const*) ; 

int FUNC3(struct nfs_server *server,
			   const struct nfs4_fs_locations *locations)
{
	char *page = NULL, *page2 = NULL;
	int loc, error;

	error = -ENOENT;
	if (locations == NULL || locations->nlocations <= 0)
		goto out;

	error = -ENOMEM;
	page = (char *) FUNC0(GFP_USER);
	if (!page)
		goto out;
	page2 = (char *) FUNC0(GFP_USER);
	if (!page2)
		goto out;

	for (loc = 0; loc < locations->nlocations; loc++) {
		const struct nfs4_fs_location *location =
						&locations->locations[loc];

		if (location == NULL || location->nservers <= 0 ||
		    location->rootpath.ncomponents == 0)
			continue;

		error = FUNC2(server, page,
							page2, location);
		if (error == 0)
			break;
	}

out:
	FUNC1((unsigned long)page);
	FUNC1((unsigned long)page2);
	return error;
}