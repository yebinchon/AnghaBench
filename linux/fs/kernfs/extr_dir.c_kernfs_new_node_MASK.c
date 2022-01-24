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
typedef  int /*<<< orphan*/  umode_t ;
struct kernfs_node {struct kernfs_node* parent; } ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  int /*<<< orphan*/  kgid_t ;

/* Variables and functions */
 struct kernfs_node* FUNC0 (int /*<<< orphan*/ ,struct kernfs_node*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct kernfs_node*) ; 

struct kernfs_node *FUNC3(struct kernfs_node *parent,
				    const char *name, umode_t mode,
				    kuid_t uid, kgid_t gid,
				    unsigned flags)
{
	struct kernfs_node *kn;

	kn = FUNC0(FUNC2(parent), parent,
			       name, mode, uid, gid, flags);
	if (kn) {
		FUNC1(parent);
		kn->parent = parent;
	}
	return kn;
}