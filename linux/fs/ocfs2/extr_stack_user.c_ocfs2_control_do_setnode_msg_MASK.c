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
struct ocfs2_control_private {long op_this_node; } ;
struct ocfs2_control_message_setn {char space; char newline; int /*<<< orphan*/  nodestr; int /*<<< orphan*/  tag; } ;
struct file {struct ocfs2_control_private* private_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ERANGE ; 
 long INT_MAX ; 
 long LONG_MAX ; 
 long LONG_MIN ; 
 scalar_t__ OCFS2_CONTROL_HANDSHAKE_PROTOCOL ; 
 int /*<<< orphan*/  OCFS2_CONTROL_MESSAGE_OP_LEN ; 
 int /*<<< orphan*/  OCFS2_CONTROL_MESSAGE_SETNODE_OP ; 
 scalar_t__ FUNC0 (struct file*) ; 
 int FUNC1 (struct file*) ; 
 long FUNC2 (int /*<<< orphan*/ ,char**,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct file *file,
					struct ocfs2_control_message_setn *msg)
{
	long nodenum;
	char *ptr = NULL;
	struct ocfs2_control_private *p = file->private_data;

	if (FUNC0(file) !=
	    OCFS2_CONTROL_HANDSHAKE_PROTOCOL)
		return -EINVAL;

	if (FUNC3(msg->tag, OCFS2_CONTROL_MESSAGE_SETNODE_OP,
		    OCFS2_CONTROL_MESSAGE_OP_LEN))
		return -EINVAL;

	if ((msg->space != ' ') || (msg->newline != '\n'))
		return -EINVAL;
	msg->space = msg->newline = '\0';

	nodenum = FUNC2(msg->nodestr, &ptr, 16);
	if (!ptr || *ptr)
		return -EINVAL;

	if ((nodenum == LONG_MIN) || (nodenum == LONG_MAX) ||
	    (nodenum > INT_MAX) || (nodenum < 0))
		return -ERANGE;
	p->op_this_node = nodenum;

	return FUNC1(file);
}