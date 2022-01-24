#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct TYPE_3__ {scalar_t__* val; } ;
struct fsnotify_mark_connector {unsigned int type; scalar_t__ flags; TYPE_1__ fsid; int /*<<< orphan*/ * obj; int /*<<< orphan*/  list; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  fsnotify_connp_t ;
typedef  TYPE_1__ __kernel_fsid_t ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FSNOTIFY_CONN_FLAG_HAS_FSID ; 
 unsigned int FSNOTIFY_OBJ_TYPE_INODE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct fsnotify_mark_connector*) ; 
 int /*<<< orphan*/  FUNC2 (struct fsnotify_mark_connector*) ; 
 int /*<<< orphan*/  fsnotify_mark_connector_cachep ; 
 struct inode* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 struct fsnotify_mark_connector* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct fsnotify_mark_connector*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(fsnotify_connp_t *connp,
					       unsigned int type,
					       __kernel_fsid_t *fsid)
{
	struct inode *inode = NULL;
	struct fsnotify_mark_connector *conn;

	conn = FUNC5(fsnotify_mark_connector_cachep, GFP_KERNEL);
	if (!conn)
		return -ENOMEM;
	FUNC7(&conn->lock);
	FUNC0(&conn->list);
	conn->type = type;
	conn->obj = connp;
	/* Cache fsid of filesystem containing the object */
	if (fsid) {
		conn->fsid = *fsid;
		conn->flags = FSNOTIFY_CONN_FLAG_HAS_FSID;
	} else {
		conn->fsid.val[0] = conn->fsid.val[1] = 0;
		conn->flags = 0;
	}
	if (conn->type == FSNOTIFY_OBJ_TYPE_INODE)
		inode = FUNC3(FUNC2(conn));
	/*
	 * cmpxchg() provides the barrier so that readers of *connp can see
	 * only initialized structure
	 */
	if (FUNC1(connp, NULL, conn)) {
		/* Someone else created list structure for us */
		if (inode)
			FUNC4(inode);
		FUNC6(fsnotify_mark_connector_cachep, conn);
	}

	return 0;
}