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
struct rfcomm_session {int dummy; } ;
struct rfcomm_cmd {int /*<<< orphan*/  ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct rfcomm_session*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct rfcomm_session*,void*,int) ; 

__attribute__((used)) static int FUNC2(struct rfcomm_session *s, struct rfcomm_cmd *cmd)
{
	FUNC0("%p cmd %u", s, cmd->ctrl);

	return FUNC1(s, (void *) cmd, sizeof(*cmd));
}