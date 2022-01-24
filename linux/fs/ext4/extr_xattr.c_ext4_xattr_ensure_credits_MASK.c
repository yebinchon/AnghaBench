#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;
struct TYPE_8__ {int h_buffer_credits; } ;
typedef  TYPE_1__ handle_t ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int FUNC3 (TYPE_1__*,struct buffer_head*) ; 
 int FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,struct buffer_head*) ; 

__attribute__((used)) static int FUNC7(handle_t *handle, struct inode *inode,
				     int credits, struct buffer_head *bh,
				     bool dirty, bool block_csum)
{
	int error;

	if (!FUNC1(handle))
		return 0;

	if (handle->h_buffer_credits >= credits)
		return 0;

	error = FUNC2(handle, credits - handle->h_buffer_credits);
	if (!error)
		return 0;
	if (error < 0) {
		FUNC5(inode->i_sb, "Extend journal (error %d)", error);
		return error;
	}

	if (bh && dirty) {
		if (block_csum)
			FUNC6(inode, bh);
		error = FUNC0(handle, NULL, bh);
		if (error) {
			FUNC5(inode->i_sb, "Handle metadata (error %d)",
				     error);
			return error;
		}
	}

	error = FUNC4(handle, credits);
	if (error) {
		FUNC5(inode->i_sb, "Restart journal (error %d)", error);
		return error;
	}

	if (bh) {
		error = FUNC3(handle, bh);
		if (error) {
			FUNC5(inode->i_sb,
				     "Get write access failed (error %d)",
				     error);
			return error;
		}
	}
	return 0;
}