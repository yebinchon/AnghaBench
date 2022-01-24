#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct dentry {TYPE_1__* d_sb; } ;
struct TYPE_8__ {TYPE_3__* lowerstack; } ;
struct TYPE_7__ {TYPE_2__* layer; } ;
struct TYPE_6__ {int idx; } ;
struct TYPE_5__ {struct dentry* s_root; } ;

/* Variables and functions */
 int EIO ; 
 TYPE_4__* FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  OVL_E_CONNECTED ; 
 int /*<<< orphan*/  OVL_INDEX ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 struct dentry* FUNC3 (struct dentry*) ; 
 struct dentry* FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 int FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct dentry*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,struct dentry*) ; 
 int FUNC10 (struct dentry*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct dentry *dentry)
{
	struct dentry *next, *parent = NULL;
	int origin_layer;
	int err = 0;

	if (FUNC1(dentry == dentry->d_sb->s_root) ||
	    FUNC1(!FUNC7(dentry)))
		return -EIO;

	origin_layer = FUNC0(dentry)->lowerstack[0].layer->idx;
	if (FUNC9(OVL_E_CONNECTED, dentry))
		return origin_layer;

	/* Find the topmost origin layer connectable ancestor of @dentry */
	next = FUNC3(dentry);
	for (;;) {
		parent = FUNC4(next);
		if (FUNC1(parent == next)) {
			err = -EIO;
			break;
		}

		/*
		 * If @parent is not origin layer connectable, then copy up
		 * @next which is origin layer connectable and we are done.
		 */
		if (FUNC6(parent) < origin_layer) {
			err = FUNC10(next);
			break;
		}

		/* If @parent is connected or indexed we are done */
		if (FUNC9(OVL_E_CONNECTED, parent) ||
		    FUNC11(OVL_INDEX, FUNC2(parent)))
			break;

		FUNC5(next);
		next = parent;
	}

	FUNC5(parent);
	FUNC5(next);

	if (!err)
		FUNC8(OVL_E_CONNECTED, dentry);

	return err ?: origin_layer;
}