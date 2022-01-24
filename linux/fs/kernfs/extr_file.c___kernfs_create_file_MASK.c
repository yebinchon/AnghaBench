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
struct lock_class_key {int dummy; } ;
struct kernfs_ops {scalar_t__ release; scalar_t__ mmap; scalar_t__ seq_show; } ;
struct TYPE_2__ {int /*<<< orphan*/  size; struct kernfs_ops const* ops; } ;
struct kernfs_node {int /*<<< orphan*/  flags; int /*<<< orphan*/  dep_map; void* priv; void const* ns; TYPE_1__ attr; } ;
typedef  int /*<<< orphan*/  loff_t ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  int /*<<< orphan*/  kgid_t ;

/* Variables and functions */
 int ENOMEM ; 
 struct kernfs_node* FUNC0 (int) ; 
 unsigned int KERNFS_FILE ; 
 int /*<<< orphan*/  KERNFS_HAS_MMAP ; 
 int /*<<< orphan*/  KERNFS_HAS_RELEASE ; 
 int /*<<< orphan*/  KERNFS_HAS_SEQ_SHOW ; 
 int /*<<< orphan*/  KERNFS_LOCKDEP ; 
 int S_IALLUGO ; 
 int S_IFREG ; 
 int FUNC1 (struct kernfs_node*) ; 
 struct kernfs_node* FUNC2 (struct kernfs_node*,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,struct lock_class_key*,int /*<<< orphan*/ ) ; 

struct kernfs_node *FUNC5(struct kernfs_node *parent,
					 const char *name,
					 umode_t mode, kuid_t uid, kgid_t gid,
					 loff_t size,
					 const struct kernfs_ops *ops,
					 void *priv, const void *ns,
					 struct lock_class_key *key)
{
	struct kernfs_node *kn;
	unsigned flags;
	int rc;

	flags = KERNFS_FILE;

	kn = FUNC2(parent, name, (mode & S_IALLUGO) | S_IFREG,
			     uid, gid, flags);
	if (!kn)
		return FUNC0(-ENOMEM);

	kn->attr.ops = ops;
	kn->attr.size = size;
	kn->ns = ns;
	kn->priv = priv;

#ifdef CONFIG_DEBUG_LOCK_ALLOC
	if (key) {
		lockdep_init_map(&kn->dep_map, "kn->count", key, 0);
		kn->flags |= KERNFS_LOCKDEP;
	}
#endif

	/*
	 * kn->attr.ops is accesible only while holding active ref.  We
	 * need to know whether some ops are implemented outside active
	 * ref.  Cache their existence in flags.
	 */
	if (ops->seq_show)
		kn->flags |= KERNFS_HAS_SEQ_SHOW;
	if (ops->mmap)
		kn->flags |= KERNFS_HAS_MMAP;
	if (ops->release)
		kn->flags |= KERNFS_HAS_RELEASE;

	rc = FUNC1(kn);
	if (rc) {
		FUNC3(kn);
		return FUNC0(rc);
	}
	return kn;
}