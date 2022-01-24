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
struct inode {int dummy; } ;
struct ea_buffer {int flag; int /*<<< orphan*/  new_ea; int /*<<< orphan*/  mp; int /*<<< orphan*/  xattr; } ;

/* Variables and functions */
 int EA_EXTENT ; 
 int EA_MALLOC ; 
 int EA_NEW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct inode *inode, struct ea_buffer *ea_buf)
{
	if (ea_buf->flag & EA_MALLOC)
		FUNC3(ea_buf->xattr);
	else if (ea_buf->flag & EA_EXTENT) {
		FUNC1(ea_buf->mp);
		FUNC5(ea_buf->mp);

		if (ea_buf->flag & EA_NEW)
			FUNC2(inode, FUNC0(&ea_buf->new_ea),
			       FUNC4(&ea_buf->new_ea));
	}
}