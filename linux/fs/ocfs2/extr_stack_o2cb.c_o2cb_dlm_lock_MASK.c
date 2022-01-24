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
typedef  int /*<<< orphan*/  u32 ;
struct ocfs2_dlm_lksb {int /*<<< orphan*/  lksb_o2dlm; } ;
struct ocfs2_cluster_connection {int /*<<< orphan*/  cc_lockspace; } ;
typedef  enum dlm_status { ____Placeholder_dlm_status } dlm_status ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,void*,unsigned int,int /*<<< orphan*/ ,struct ocfs2_dlm_lksb*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  o2dlm_blocking_ast_wrapper ; 
 int /*<<< orphan*/  o2dlm_lock_ast_wrapper ; 

__attribute__((used)) static int FUNC4(struct ocfs2_cluster_connection *conn,
			 int mode,
			 struct ocfs2_dlm_lksb *lksb,
			 u32 flags,
			 void *name,
			 unsigned int namelen)
{
	enum dlm_status status;
	int o2dlm_mode = FUNC3(mode);
	int o2dlm_flags = FUNC2(flags);
	int ret;

	status = FUNC1(conn->cc_lockspace, o2dlm_mode, &lksb->lksb_o2dlm,
			 o2dlm_flags, name, namelen,
			 o2dlm_lock_ast_wrapper, lksb,
			 o2dlm_blocking_ast_wrapper);
	ret = FUNC0(status);
	return ret;
}