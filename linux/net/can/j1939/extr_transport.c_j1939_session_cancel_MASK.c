#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  pgn; } ;
struct TYPE_5__ {TYPE_1__ addr; } ;
struct j1939_session {int /*<<< orphan*/  err; scalar_t__ sk; TYPE_2__ skcb; int /*<<< orphan*/  transmission; int /*<<< orphan*/  state; struct j1939_priv* priv; } ;
struct j1939_priv {int dummy; } ;
typedef  enum j1939_xtp_abort { ____Placeholder_j1939_xtp_abort } j1939_xtp_abort ;

/* Variables and functions */
 int /*<<< orphan*/  J1939_SESSION_WAITING_ABORT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct j1939_priv*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct j1939_priv*,TYPE_2__*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct j1939_session *session,
				 enum j1939_xtp_abort err)
{
	struct j1939_priv *priv = session->priv;

	FUNC0(!err);

	session->err = FUNC3(priv, err);
	/* do not send aborts on incoming broadcasts */
	if (!FUNC1(&session->skcb)) {
		session->state = J1939_SESSION_WAITING_ABORT;
		FUNC4(priv, &session->skcb,
				   !session->transmission,
				   err, session->skcb.addr.pgn);
	}

	if (session->sk)
		FUNC2(session->sk, session->err);
}