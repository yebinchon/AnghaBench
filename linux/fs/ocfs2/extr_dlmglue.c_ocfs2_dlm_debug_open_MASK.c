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
struct ocfs2_super {int /*<<< orphan*/  osb_dlm_debug; } ;
struct TYPE_2__ {int /*<<< orphan*/  l_debug_list; } ;
struct ocfs2_dlm_seq_priv {int /*<<< orphan*/  p_dlm_debug; TYPE_1__ p_iter_res; } ;
struct inode {struct ocfs2_super* i_private; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ocfs2_dlm_seq_priv* FUNC1 (struct file*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ocfs2_dlm_seq_ops ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	struct ocfs2_dlm_seq_priv *priv;
	struct ocfs2_super *osb;

	priv = FUNC1(file, &ocfs2_dlm_seq_ops, sizeof(*priv));
	if (!priv) {
		FUNC2(-ENOMEM);
		return -ENOMEM;
	}

	osb = inode->i_private;
	FUNC4(osb->osb_dlm_debug);
	priv->p_dlm_debug = osb->osb_dlm_debug;
	FUNC0(&priv->p_iter_res.l_debug_list);

	FUNC3(&priv->p_iter_res,
				   priv->p_dlm_debug);

	return 0;
}