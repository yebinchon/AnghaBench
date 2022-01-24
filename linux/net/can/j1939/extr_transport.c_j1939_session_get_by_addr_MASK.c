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
struct j1939_session {int dummy; } ;
struct j1939_priv {int /*<<< orphan*/  active_session_list; } ;
struct j1939_addr {int dummy; } ;

/* Variables and functions */
 struct j1939_session* FUNC0 (struct j1939_priv*,int /*<<< orphan*/ *,struct j1939_addr*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct j1939_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct j1939_priv*) ; 

__attribute__((used)) static struct
j1939_session *FUNC3(struct j1939_priv *priv,
					 struct j1939_addr *addr,
					 bool reverse, bool transmitter)
{
	struct j1939_session *session;

	FUNC1(priv);
	session = FUNC0(priv,
						   &priv->active_session_list,
						   addr, reverse, transmitter);
	FUNC2(priv);

	return session;
}