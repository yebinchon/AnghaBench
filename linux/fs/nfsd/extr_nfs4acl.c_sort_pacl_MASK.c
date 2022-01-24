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
struct posix_acl {int a_count; TYPE_1__* a_entries; } ;
struct TYPE_2__ {scalar_t__ e_tag; } ;

/* Variables and functions */
 scalar_t__ ACL_GROUP ; 
 scalar_t__ ACL_GROUP_OBJ ; 
 scalar_t__ ACL_USER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct posix_acl*,int,int) ; 

__attribute__((used)) static void
FUNC2(struct posix_acl *pacl)
{
	/* posix_acl_valid requires that users and groups be in order
	 * by uid/gid. */
	int i, j;

	/* no users or groups */
	if (!pacl || pacl->a_count <= 4)
		return;

	i = 1;
	while (pacl->a_entries[i].e_tag == ACL_USER)
		i++;
	FUNC1(pacl, 1, i-1);

	FUNC0(pacl->a_entries[i].e_tag != ACL_GROUP_OBJ);
	j = ++i;
	while (pacl->a_entries[j].e_tag == ACL_GROUP)
		j++;
	FUNC1(pacl, i, j-1);
	return;
}