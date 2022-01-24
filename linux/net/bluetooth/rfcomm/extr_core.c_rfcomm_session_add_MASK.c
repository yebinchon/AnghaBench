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
struct socket {int dummy; } ;
struct rfcomm_session {int state; int /*<<< orphan*/  list; int /*<<< orphan*/  cfc; int /*<<< orphan*/  mtu; struct socket* sock; int /*<<< orphan*/  dlcs; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct rfcomm_session*,struct socket*) ; 
 int BT_LISTEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RFCOMM_CFC_DISABLED ; 
 int /*<<< orphan*/  RFCOMM_CFC_UNKNOWN ; 
 int /*<<< orphan*/  RFCOMM_DEFAULT_MTU ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 scalar_t__ disable_cfc ; 
 int /*<<< orphan*/  FUNC2 (struct rfcomm_session*) ; 
 struct rfcomm_session* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rfcomm_session_timeout ; 
 int /*<<< orphan*/  session_list ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct rfcomm_session *FUNC7(struct socket *sock, int state)
{
	struct rfcomm_session *s = FUNC3(sizeof(*s), GFP_KERNEL);

	if (!s)
		return NULL;

	FUNC0("session %p sock %p", s, sock);

	FUNC5(&s->timer, rfcomm_session_timeout, 0);

	FUNC1(&s->dlcs);
	s->state = state;
	s->sock  = sock;

	s->mtu = RFCOMM_DEFAULT_MTU;
	s->cfc = disable_cfc ? RFCOMM_CFC_DISABLED : RFCOMM_CFC_UNKNOWN;

	/* Do not increment module usage count for listening sessions.
	 * Otherwise we won't be able to unload the module. */
	if (state != BT_LISTEN)
		if (!FUNC6(THIS_MODULE)) {
			FUNC2(s);
			return NULL;
		}

	FUNC4(&s->list, &session_list);

	return s;
}