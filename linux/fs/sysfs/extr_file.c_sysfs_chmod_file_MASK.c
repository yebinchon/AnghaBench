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
typedef  int umode_t ;
struct kobject {int /*<<< orphan*/  sd; } ;
struct kernfs_node {int mode; } ;
struct iattr {int ia_mode; int /*<<< orphan*/  ia_valid; } ;
struct attribute {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_MODE ; 
 int ENOENT ; 
 int S_IALLUGO ; 
 struct kernfs_node* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kernfs_node*) ; 
 int FUNC2 (struct kernfs_node*,struct iattr*) ; 

int FUNC3(struct kobject *kobj, const struct attribute *attr,
		     umode_t mode)
{
	struct kernfs_node *kn;
	struct iattr newattrs;
	int rc;

	kn = FUNC0(kobj->sd, attr->name);
	if (!kn)
		return -ENOENT;

	newattrs.ia_mode = (mode & S_IALLUGO) | (kn->mode & ~S_IALLUGO);
	newattrs.ia_valid = ATTR_MODE;

	rc = FUNC2(kn, &newattrs);

	FUNC1(kn);
	return rc;
}