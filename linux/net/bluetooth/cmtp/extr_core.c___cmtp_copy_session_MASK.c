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
typedef  int u32 ;
struct cmtp_session {int flags; int /*<<< orphan*/  num; int /*<<< orphan*/  state; int /*<<< orphan*/  bdaddr; } ;
struct cmtp_conninfo {int flags; int /*<<< orphan*/  num; int /*<<< orphan*/  state; int /*<<< orphan*/  bdaddr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CMTP_LOOPBACK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cmtp_conninfo*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct cmtp_session *session, struct cmtp_conninfo *ci)
{
	u32 valid_flags = FUNC0(CMTP_LOOPBACK);
	FUNC2(ci, 0, sizeof(*ci));
	FUNC1(&ci->bdaddr, &session->bdaddr);

	ci->flags = session->flags & valid_flags;
	ci->state = session->state;

	ci->num = session->num;
}