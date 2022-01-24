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
typedef  int umode_t ;
struct TYPE_2__ {int /*<<< orphan*/  root; } ;
struct kernfs_node {void* priv; void const* ns; TYPE_1__ dir; } ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  int /*<<< orphan*/  kgid_t ;

/* Variables and functions */
 int ENOMEM ; 
 struct kernfs_node* FUNC0 (int) ; 
 int /*<<< orphan*/  KERNFS_DIR ; 
 int S_IFDIR ; 
 int FUNC1 (struct kernfs_node*) ; 
 struct kernfs_node* FUNC2 (struct kernfs_node*,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kernfs_node*) ; 

struct kernfs_node *FUNC4(struct kernfs_node *parent,
					 const char *name, umode_t mode,
					 kuid_t uid, kgid_t gid,
					 void *priv, const void *ns)
{
	struct kernfs_node *kn;
	int rc;

	/* allocate */
	kn = FUNC2(parent, name, mode | S_IFDIR,
			     uid, gid, KERNFS_DIR);
	if (!kn)
		return FUNC0(-ENOMEM);

	kn->dir.root = parent->dir.root;
	kn->ns = ns;
	kn->priv = priv;

	/* link in */
	rc = FUNC1(kn);
	if (!rc)
		return kn;

	FUNC3(kn);
	return FUNC0(rc);
}